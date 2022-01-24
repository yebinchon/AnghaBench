#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*) ;} ;
struct TYPE_3__ {int numentities; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRT_MESSAGE ; 
 TYPE_2__ botimport ; 
 TYPE_1__ bspworld ; 
 int qfalse ; 
 int qtrue ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

int FUNC1(int ent)
{
	if (ent <= 0 || ent >= bspworld.numentities)
	{
		botimport.Print(PRT_MESSAGE, "bsp entity out of range\n");
		return qfalse;
	} //end if
	return qtrue;
}