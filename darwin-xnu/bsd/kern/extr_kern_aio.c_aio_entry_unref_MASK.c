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
struct TYPE_7__ {scalar_t__ aio_refcount; int flags; } ;
typedef  TYPE_1__ aio_workq_entry ;

/* Variables and functions */
 int AIO_DO_FREE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void		
FUNC4(aio_workq_entry *entryp)
{
	FUNC0(entryp);
	FUNC2(entryp);

	if ((entryp->aio_refcount == 0) && ((entryp->flags & AIO_DO_FREE) != 0)) {
		FUNC1(entryp);
		FUNC3(entryp);
	} else {
		FUNC1(entryp);
	}
	
	return;
}