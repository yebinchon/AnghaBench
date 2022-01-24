#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int pos; scalar_t__ savings; } ;
typedef  TYPE_1__ dictItem ;
typedef  int U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (TYPE_1__*,TYPE_1__,int,void const*) ; 

__attribute__((used)) static void FUNC2(dictItem* table, U32 maxSize, dictItem elt, const void* buffer)
{
    /* merge if possible */
    U32 mergeId = FUNC1(table, elt, 0, buffer);
    if (mergeId) {
        U32 newMerge = 1;
        while (newMerge) {
            newMerge = FUNC1(table, table[mergeId], mergeId, buffer);
            if (newMerge) FUNC0(table, mergeId);
            mergeId = newMerge;
        }
        return;
    }

    /* insert */
    {   U32 current;
        U32 nextElt = table->pos;
        if (nextElt >= maxSize) nextElt = maxSize-1;
        current = nextElt-1;
        while (table[current].savings < elt.savings) {
            table[current+1] = table[current];
            current--;
        }
        table[current+1] = elt;
        table->pos = nextElt+1;
    }
}