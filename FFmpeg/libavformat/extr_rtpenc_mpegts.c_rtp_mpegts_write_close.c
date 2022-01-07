
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct MuxChain {TYPE_3__* rtp_ctx; TYPE_3__* mpegts_ctx; } ;
struct TYPE_6__ {int pb; } ;
struct TYPE_5__ {struct MuxChain* priv_data; } ;
typedef TYPE_1__ AVFormatContext ;


 int av_write_trailer (TYPE_3__*) ;
 int avformat_free_context (TYPE_3__*) ;
 int ffio_free_dyn_buf (int *) ;

__attribute__((used)) static int rtp_mpegts_write_close(AVFormatContext *s)
{
    struct MuxChain *chain = s->priv_data;

    if (chain->mpegts_ctx) {
        av_write_trailer(chain->mpegts_ctx);
        ffio_free_dyn_buf(&chain->mpegts_ctx->pb);
        avformat_free_context(chain->mpegts_ctx);
    }
    if (chain->rtp_ctx) {
        av_write_trailer(chain->rtp_ctx);
        avformat_free_context(chain->rtp_ctx);
    }
    return 0;
}
