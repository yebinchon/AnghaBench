
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * cache; } ;
typedef TYPE_1__ VP9BSFContext ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVBSFContext ;


 int MAX_CACHE ;
 int av_packet_free (int *) ;

__attribute__((used)) static void vp9_superframe_close(AVBSFContext *ctx)
{
    VP9BSFContext *s = ctx->priv_data;
    int n;


    for (n = 0; n < MAX_CACHE; n++)
        av_packet_free(&s->cache[n]);
}
