
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* region_list; } ;
struct TYPE_7__ {struct TYPE_7__* pbuf; struct TYPE_7__* next; } ;
typedef TYPE_1__ DVBSubRegion ;
typedef TYPE_2__ DVBSubContext ;


 int av_freep (TYPE_1__**) ;
 int delete_region_display_list (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static void delete_regions(DVBSubContext *ctx)
{
    while (ctx->region_list) {
        DVBSubRegion *region = ctx->region_list;

        ctx->region_list = region->next;

        delete_region_display_list(ctx, region);

        av_freep(&region->pbuf);
        av_freep(&region);
    }
}
