#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct proc_uniqidentifierinfo {scalar_t__ p_reserve4; scalar_t__ p_reserve3; scalar_t__ p_reserve2; int /*<<< orphan*/  p_puniqueid; int /*<<< orphan*/  p_uuid; int /*<<< orphan*/  p_uniqueid; } ;
typedef  int /*<<< orphan*/  proc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(proc_t p, struct proc_uniqidentifierinfo *p_uniqidinfo)
{
	p_uniqidinfo->p_uniqueid = FUNC2(p);
	FUNC0(p, (unsigned char *)&p_uniqidinfo->p_uuid, sizeof(p_uniqidinfo->p_uuid));
	p_uniqidinfo->p_puniqueid = FUNC1(p);
	p_uniqidinfo->p_reserve2 = 0;
	p_uniqidinfo->p_reserve3 = 0;
	p_uniqidinfo->p_reserve4 = 0;
}