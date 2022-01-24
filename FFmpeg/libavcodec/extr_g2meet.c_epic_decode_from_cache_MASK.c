#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {struct TYPE_7__* next; int /*<<< orphan*/  pixel; int /*<<< orphan*/  rung; } ;
typedef  TYPE_1__ ePICPixListElem ;
struct TYPE_8__ {TYPE_1__* list; } ;
typedef  TYPE_2__ ePICPixHashElem ;
struct TYPE_9__ {int /*<<< orphan*/  stack_pos; int /*<<< orphan*/ * stack; int /*<<< orphan*/  els_ctx; int /*<<< orphan*/  hash; } ;
typedef  TYPE_3__ ePICContext ;

/* Variables and functions */
 size_t EPIC_PIX_STACK_MAX ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(ePICContext *dc, uint32_t W, uint32_t *pPix)
{
    ePICPixListElem *list, *prev = NULL;
    ePICPixHashElem *hash_elem = FUNC0(&dc->hash, W);

    if (!hash_elem || !hash_elem->list)
        return 0;

    list = hash_elem->list;
    while (list) {
        if (!FUNC2(dc, list->pixel)) {
            if (FUNC1(&dc->els_ctx, &list->rung)) {
                *pPix = list->pixel;
                if (list != hash_elem->list) {
                    prev->next      = list->next;
                    list->next      = hash_elem->list;
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