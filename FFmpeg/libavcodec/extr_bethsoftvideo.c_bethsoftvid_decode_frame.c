
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_16__ {int* linesize; int ** data; } ;
struct TYPE_15__ {int width; int height; TYPE_2__* priv_data; } ;
struct TYPE_14__ {scalar_t__ side_data_elems; int size; int data; TYPE_1__* side_data; } ;
struct TYPE_13__ {TYPE_7__* frame; int g; } ;
struct TYPE_12__ {scalar_t__ type; int size; int data; } ;
typedef TYPE_2__ BethsoftvidContext ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_PKT_DATA_PALETTE ;




 int av_frame_ref (void*,TYPE_7__*) ;
 int av_log (TYPE_4__*,int ,char*) ;
 int bytestream2_get_buffer (int *,int *,int) ;
 void* bytestream2_get_byte (int *) ;
 int bytestream2_get_le16 (int *) ;
 int bytestream2_init (int *,int ,int) ;
 void* bytestream2_peek_byte (int *) ;
 int bytestream2_tell (int *) ;
 int ff_reget_buffer (TYPE_4__*,TYPE_7__*,int ) ;
 int memset (int *,void*,int) ;
 int set_palette (TYPE_2__*) ;

__attribute__((used)) static int bethsoftvid_decode_frame(AVCodecContext *avctx,
                              void *data, int *got_frame,
                              AVPacket *avpkt)
{
    BethsoftvidContext * vid = avctx->priv_data;
    char block_type;
    uint8_t * dst;
    uint8_t * frame_end;
    int remaining = avctx->width;
    int wrap_to_next_line;
    int code, ret;
    int yoffset;

    if ((ret = ff_reget_buffer(avctx, vid->frame, 0)) < 0)
        return ret;
    wrap_to_next_line = vid->frame->linesize[0] - avctx->width;

    if (avpkt->side_data_elems > 0 &&
        avpkt->side_data[0].type == AV_PKT_DATA_PALETTE) {
        bytestream2_init(&vid->g, avpkt->side_data[0].data,
                         avpkt->side_data[0].size);
        if ((ret = set_palette(vid)) < 0)
            return ret;
    }

    bytestream2_init(&vid->g, avpkt->data, avpkt->size);
    dst = vid->frame->data[0];
    frame_end = vid->frame->data[0] + vid->frame->linesize[0] * avctx->height;

    switch(block_type = bytestream2_get_byte(&vid->g)){
        case 131: {
            *got_frame = 0;
            if ((ret = set_palette(vid)) < 0) {
                av_log(avctx, AV_LOG_ERROR, "error reading palette\n");
                return ret;
            }
            return bytestream2_tell(&vid->g);
        }
        case 128:
            yoffset = bytestream2_get_le16(&vid->g);
            if(yoffset >= avctx->height)
                return AVERROR_INVALIDDATA;
            dst += vid->frame->linesize[0] * yoffset;
        case 129:
        case 130:
            break;
        default:
            return AVERROR_INVALIDDATA;
    }


    while((code = bytestream2_get_byte(&vid->g))){
        int length = code & 0x7f;


        while(length > remaining){
            if(code < 0x80)
                bytestream2_get_buffer(&vid->g, dst, remaining);
            else if(block_type == 130)
                memset(dst, bytestream2_peek_byte(&vid->g), remaining);
            length -= remaining;
            dst += remaining + wrap_to_next_line;
            remaining = avctx->width;
            if(dst == frame_end)
                goto end;
        }


        if(code < 0x80)
            bytestream2_get_buffer(&vid->g, dst, length);
        else if(block_type == 130)
            memset(dst, bytestream2_get_byte(&vid->g), length);
        remaining -= length;
        dst += length;
    }
    end:

    if ((ret = av_frame_ref(data, vid->frame)) < 0)
        return ret;

    *got_frame = 1;

    return avpkt->size;
}
