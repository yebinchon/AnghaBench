
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int8_t ;
struct TYPE_11__ {int height; int width; } ;
struct TYPE_10__ {int** data; int* linesize; } ;
struct TYPE_9__ {int* data; int size; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (TYPE_3__*,int ,char*,int,int) ;
 int ff_get_buffer (TYPE_3__*,TYPE_2__*,int ) ;

__attribute__((used)) static int aura_decode_frame(AVCodecContext *avctx,
                             void *data, int *got_frame,
                             AVPacket *pkt)
{
    AVFrame *frame = data;
    uint8_t *Y, *U, *V;
    uint8_t val;
    int x, y, ret;
    const uint8_t *buf = pkt->data;


    const int8_t *delta_table = (const int8_t*)buf + 16;

    if (pkt->size != 48 + avctx->height * avctx->width) {
        av_log(avctx, AV_LOG_ERROR, "got a buffer with %d bytes when %d were expected\n",
               pkt->size, 48 + avctx->height * avctx->width);
        return AVERROR_INVALIDDATA;
    }


    buf += 48;

    if ((ret = ff_get_buffer(avctx, frame, 0)) < 0)
        return ret;

    Y = frame->data[0];
    U = frame->data[1];
    V = frame->data[2];


    for (y = 0; y < avctx->height; y++) {

        val = *buf++;
        U[0] = val & 0xF0;
        Y[0] = val << 4;
        val = *buf++;
        V[0] = val & 0xF0;
        Y[1] = Y[0] + delta_table[val & 0xF];
        Y += 2; U++; V++;


        for (x = 1; x < (avctx->width >> 1); x++) {
            val = *buf++;
            U[0] = U[-1] + delta_table[val >> 4];
            Y[0] = Y[-1] + delta_table[val & 0xF];
            val = *buf++;
            V[0] = V[-1] + delta_table[val >> 4];
            Y[1] = Y[ 0] + delta_table[val & 0xF];
            Y += 2; U++; V++;
        }
        Y += frame->linesize[0] - avctx->width;
        U += frame->linesize[1] - (avctx->width >> 1);
        V += frame->linesize[2] - (avctx->width >> 1);
    }

    *got_frame = 1;

    return pkt->size;
}
