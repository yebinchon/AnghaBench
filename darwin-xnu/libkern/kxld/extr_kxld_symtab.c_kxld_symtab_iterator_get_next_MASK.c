#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int boolean_t ;
struct TYPE_8__ {scalar_t__ nitems; } ;
struct TYPE_7__ {scalar_t__ idx; int (* test ) (int /*<<< orphan*/ *) ;scalar_t__ negate; TYPE_1__* symtab; } ;
struct TYPE_6__ {TYPE_4__ syms; } ;
typedef  TYPE_2__ KXLDSymtabIterator ;
typedef  int /*<<< orphan*/  KXLDSym ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_4__*,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

KXLDSym *
FUNC3(KXLDSymtabIterator *iter)
{
    KXLDSym *sym = NULL;
    KXLDSym *tmp = NULL;
    boolean_t cmp = FALSE;

    FUNC0(iter);

    for (; iter->idx < iter->symtab->syms.nitems; ++iter->idx) {
        tmp = FUNC1(&iter->symtab->syms, iter->idx);
        cmp = iter->test(tmp);
        if (iter->negate) cmp = !cmp;

        if (cmp) {
            sym = tmp;
            ++iter->idx;
            break;
        }
    }

    return sym;   
}