
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int id; struct TYPE_6__* next; } ;
struct TYPE_5__ {TYPE_2__* clut_list; } ;
typedef TYPE_1__ DVBSubContext ;
typedef TYPE_2__ DVBSubCLUT ;



__attribute__((used)) static DVBSubCLUT* get_clut(DVBSubContext *ctx, int clut_id)
{
    DVBSubCLUT *ptr = ctx->clut_list;

    while (ptr && ptr->id != clut_id) {
        ptr = ptr->next;
    }

    return ptr;
}
