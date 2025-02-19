
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ int64_t ;
struct TYPE_14__ {char* bitmap; } ;
typedef TYPE_1__ XFaceContext ;
struct TYPE_18__ {TYPE_1__* priv_data; } ;
struct TYPE_17__ {char** data; int * linesize; } ;
struct TYPE_16__ {int size; scalar_t__* data; } ;
struct TYPE_15__ {int member_0; } ;
typedef TYPE_2__ BigInt ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVCodecContext ;


 int AV_LOG_WARNING ;
 scalar_t__ XFACE_FIRST_PRINT ;
 scalar_t__ XFACE_LAST_PRINT ;
 int XFACE_MAX_DIGITS ;
 int XFACE_PIXELS ;
 int XFACE_PRINTS ;
 int XFACE_WIDTH ;
 int av_log (TYPE_5__*,int ,char*,int) ;
 int decode_block (TYPE_2__*,char*,int,int,int ) ;
 int ff_big_add (TYPE_2__*,scalar_t__) ;
 int ff_big_mul (TYPE_2__*,int ) ;
 int ff_get_buffer (TYPE_5__*,TYPE_4__*,int ) ;
 int ff_xface_generate_face (char*,char*) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static int xface_decode_frame(AVCodecContext *avctx,
                              void *data, int *got_frame,
                              AVPacket *avpkt)
{
    XFaceContext *xface = avctx->priv_data;
    int ret, i, j, k;
    uint8_t byte;
    BigInt b = {0};
    char *buf;
    int64_t c;
    AVFrame *frame = data;

    if ((ret = ff_get_buffer(avctx, frame, 0)) < 0)
        return ret;

    for (i = 0, k = 0; i < avpkt->size && avpkt->data[i]; i++) {
        c = avpkt->data[i];


        if (c < XFACE_FIRST_PRINT || c > XFACE_LAST_PRINT)
            continue;

        if (++k > XFACE_MAX_DIGITS) {
            av_log(avctx, AV_LOG_WARNING,
                   "Buffer is longer than expected, truncating at byte %d\n", i);
            break;
        }
        ff_big_mul(&b, XFACE_PRINTS);
        ff_big_add(&b, c - XFACE_FIRST_PRINT);
    }


    memset(xface->bitmap, 0, XFACE_PIXELS);
    buf = xface->bitmap;
    decode_block(&b, buf, 16, 16, 0);
    decode_block(&b, buf + 16, 16, 16, 0);
    decode_block(&b, buf + 32, 16, 16, 0);
    decode_block(&b, buf + XFACE_WIDTH * 16, 16, 16, 0);
    decode_block(&b, buf + XFACE_WIDTH * 16 + 16, 16, 16, 0);
    decode_block(&b, buf + XFACE_WIDTH * 16 + 32, 16, 16, 0);
    decode_block(&b, buf + XFACE_WIDTH * 32 , 16, 16, 0);
    decode_block(&b, buf + XFACE_WIDTH * 32 + 16, 16, 16, 0);
    decode_block(&b, buf + XFACE_WIDTH * 32 + 32, 16, 16, 0);

    ff_xface_generate_face(xface->bitmap, xface->bitmap);


    buf = frame->data[0];
    for (i = 0, j = 0, k = 0, byte = 0; i < XFACE_PIXELS; i++) {
        byte += xface->bitmap[i];
        if (k == 7) {
            buf[j++] = byte;
            byte = k = 0;
        } else {
            k++;
            byte <<= 1;
        }
        if (j == XFACE_WIDTH/8) {
            j = 0;
            buf += frame->linesize[0];
        }
    }

    *got_frame = 1;

    return avpkt->size;
}
