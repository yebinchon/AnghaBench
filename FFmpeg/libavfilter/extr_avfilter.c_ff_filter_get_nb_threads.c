
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ nb_threads; TYPE_1__* graph; } ;
struct TYPE_4__ {int nb_threads; } ;
typedef TYPE_2__ AVFilterContext ;


 int FFMIN (scalar_t__,int) ;

int ff_filter_get_nb_threads(AVFilterContext *ctx)
{
     if (ctx->nb_threads > 0)
         return FFMIN(ctx->nb_threads, ctx->graph->nb_threads);
     return ctx->graph->nb_threads;
}
