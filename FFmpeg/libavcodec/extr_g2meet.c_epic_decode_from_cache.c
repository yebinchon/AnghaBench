
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {struct TYPE_7__* next; int pixel; int rung; } ;
typedef TYPE_1__ ePICPixListElem ;
struct TYPE_8__ {TYPE_1__* list; } ;
typedef TYPE_2__ ePICPixHashElem ;
struct TYPE_9__ {int stack_pos; int * stack; int els_ctx; int hash; } ;
typedef TYPE_3__ ePICContext ;


 size_t EPIC_PIX_STACK_MAX ;
 TYPE_2__* epic_hash_find (int *,int ) ;
 scalar_t__ ff_els_decode_bit (int *,int *) ;
 int is_pixel_on_stack (TYPE_3__*,int ) ;

__attribute__((used)) static int epic_decode_from_cache(ePICContext *dc, uint32_t W, uint32_t *pPix)
{
    ePICPixListElem *list, *prev = ((void*)0);
    ePICPixHashElem *hash_elem = epic_hash_find(&dc->hash, W);

    if (!hash_elem || !hash_elem->list)
        return 0;

    list = hash_elem->list;
    while (list) {
        if (!is_pixel_on_stack(dc, list->pixel)) {
            if (ff_els_decode_bit(&dc->els_ctx, &list->rung)) {
                *pPix = list->pixel;
                if (list != hash_elem->list) {
                    prev->next = list->next;
                    list->next = hash_elem->list;
                    hash_elem->list = list;
                }
                return 1;
            }
            dc->stack[dc->stack_pos++ & EPIC_PIX_STACK_MAX] = list->pixel;
        }
        prev = list;
        list = list->next;
    }

    return 0;
}
