#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t ;
typedef  int UINT ;
struct TYPE_9__ {int IpAddress; } ;
struct TYPE_8__ {int /*<<< orphan*/  ArpTable; } ;
typedef  TYPE_1__ L3IF ;
typedef  TYPE_2__ L3ARPENTRY ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 

L3ARPENTRY *FUNC2(L3IF *f, UINT ip)
{
	L3ARPENTRY *e, t;
	// Validate arguments
	if (f == NULL || ip == 0 || ip == 0xffffffff)
	{
		return NULL;
	}

	FUNC1(&t, sizeof(t));
	t.IpAddress = ip;

	e = FUNC0(f->ArpTable, &t);

	return e;
}