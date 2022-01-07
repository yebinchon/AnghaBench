
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_18__ {int width; int height; scalar_t__ pix_fmt; TYPE_1__* priv_data; } ;
struct TYPE_17__ {int* linesize; scalar_t__* data; } ;
struct TYPE_16__ {int flags; int size; int data; } ;
struct TYPE_14__ {int avail_in; int total_out; scalar_t__ next_in; int avail_out; int next_out; } ;
struct TYPE_15__ {TYPE_10__ zstream; } ;
typedef TYPE_1__ LclEncContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AV_LOG_ERROR ;
 scalar_t__ AV_PIX_FMT_BGR24 ;
 int AV_PKT_FLAG_KEY ;
 int Z_FINISH ;
 int Z_NO_FLUSH ;
 int Z_OK ;
 int Z_STREAM_END ;
 int av_log (TYPE_4__*,int ,char*,...) ;
 int deflate (TYPE_10__*,int ) ;
 int deflateBound (TYPE_10__*,int) ;
 int deflateReset (TYPE_10__*) ;
 int ff_alloc_packet2 (TYPE_4__*,TYPE_2__*,int,int ) ;

__attribute__((used)) static int encode_frame(AVCodecContext *avctx, AVPacket *pkt,
                        const AVFrame *p, int *got_packet)
{
    LclEncContext *c = avctx->priv_data;
    int i, ret;
    int zret;
    int max_size = deflateBound(&c->zstream, avctx->width * avctx->height * 3);

    if ((ret = ff_alloc_packet2(avctx, pkt, max_size, 0)) < 0)
        return ret;

    if(avctx->pix_fmt != AV_PIX_FMT_BGR24){
        av_log(avctx, AV_LOG_ERROR, "Format not supported!\n");
        return -1;
    }

    zret = deflateReset(&c->zstream);
    if (zret != Z_OK) {
        av_log(avctx, AV_LOG_ERROR, "Deflate reset error: %d\n", zret);
        return -1;
    }
    c->zstream.next_out = pkt->data;
    c->zstream.avail_out = pkt->size;

    for(i = avctx->height - 1; i >= 0; i--) {
        c->zstream.next_in = p->data[0]+p->linesize[0]*i;
        c->zstream.avail_in = avctx->width*3;
        zret = deflate(&c->zstream, Z_NO_FLUSH);
        if (zret != Z_OK) {
            av_log(avctx, AV_LOG_ERROR, "Deflate error: %d\n", zret);
            return -1;
        }
    }
    zret = deflate(&c->zstream, Z_FINISH);
    if (zret != Z_STREAM_END) {
        av_log(avctx, AV_LOG_ERROR, "Deflate error: %d\n", zret);
        return -1;
    }

    pkt->size = c->zstream.total_out;
    pkt->flags |= AV_PKT_FLAG_KEY;
    *got_packet = 1;

    return 0;
}
