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
struct TYPE_4__ {int /*<<< orphan*/  lastOn; } ;
typedef  TYPE_1__ menu_t ;

/* Variables and functions */
 TYPE_1__* currentMenu ; 
 int /*<<< orphan*/  itemOn ; 

void FUNC0(menu_t *menudef)
{
    currentMenu = menudef;
    itemOn = currentMenu->lastOn;
}