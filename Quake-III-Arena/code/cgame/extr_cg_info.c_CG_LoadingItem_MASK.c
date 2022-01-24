#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  pickup_name; scalar_t__ icon; } ;
typedef  TYPE_1__ gitem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_LOADING_ITEM_ICONS ; 
 TYPE_1__* bg_itemlist ; 
 scalar_t__ loadingItemIconCount ; 
 int /*<<< orphan*/ * loadingItemIcons ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void FUNC2( int itemNum ) {
	gitem_t		*item;

	item = &bg_itemlist[itemNum];
	
	if ( item->icon && loadingItemIconCount < MAX_LOADING_ITEM_ICONS ) {
		loadingItemIcons[loadingItemIconCount++] = FUNC1( item->icon );
	}

	FUNC0( item->pickup_name );
}