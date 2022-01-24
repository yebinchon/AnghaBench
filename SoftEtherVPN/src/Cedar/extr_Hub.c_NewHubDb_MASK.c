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
struct TYPE_4__ {int /*<<< orphan*/  AcList; void* CrlList; void* RootCertList; void* UserList; void* GroupList; } ;
typedef  TYPE_1__ HUBDB ;

/* Variables and functions */
 int /*<<< orphan*/ * CompareCert ; 
 int /*<<< orphan*/ * CompareGroupName ; 
 int /*<<< orphan*/ * CompareUserName ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int) ; 

HUBDB *FUNC3()
{
	HUBDB *d = FUNC2(sizeof(HUBDB));

	d->GroupList = FUNC1(CompareGroupName);
	d->UserList = FUNC1(CompareUserName);
	d->RootCertList = FUNC1(CompareCert);
	d->CrlList = FUNC1(NULL);
	d->AcList = FUNC0();

	return d;
}