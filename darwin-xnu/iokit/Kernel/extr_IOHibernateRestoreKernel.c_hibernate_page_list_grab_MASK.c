#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ ppnum_t ;
typedef  int /*<<< orphan*/  hibernate_page_list_t ;
struct TYPE_4__ {scalar_t__ last_page; } ;
typedef  TYPE_1__ hibernate_bitmap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  kIOHibernateRestoreCodeNoMemory ; 

__attribute__((used)) static ppnum_t
FUNC4(hibernate_page_list_t * list, uint32_t * pNextFree)
{
    uint32_t		 nextFree = *pNextFree;
    uint32_t		 nextFreeInBank;
    hibernate_bitmap_t * bitmap;

    nextFreeInBank = nextFree + 1;
    while ((bitmap = FUNC3(list, &nextFreeInBank)))
    {
	nextFreeInBank += FUNC2(bitmap, FALSE, nextFreeInBank);
	if (nextFreeInBank <= bitmap->last_page)
	{
	    *pNextFree = nextFreeInBank;
	    break;
	}
    }

    if (!bitmap) 
    {
	FUNC0(kIOHibernateRestoreCodeNoMemory, nextFree);
	FUNC1();
	nextFree = 0;
    }

    return (nextFree);
}