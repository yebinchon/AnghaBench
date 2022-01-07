
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int dss_sp_buf; } ;
typedef TYPE_1__ DSSDemuxContext ;
typedef TYPE_2__ AVFormatContext ;


 int av_freep (int *) ;

__attribute__((used)) static int dss_read_close(AVFormatContext *s)
{
    DSSDemuxContext *ctx = s->priv_data;

    av_freep(&ctx->dss_sp_buf);

    return 0;
}
