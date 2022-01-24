#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* mount_t ;
struct TYPE_5__ {scalar_t__ mnt_count; int mnt_lflag; } ;

/* Variables and functions */
 int MNT_LDRAIN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 

void
FUNC3(mount_t mp, int locked)
{
        if ( !locked)
	        FUNC0(mp);
	
	mp->mnt_count--;

	if (mp->mnt_count == 0 && (mp->mnt_lflag & MNT_LDRAIN))
	        FUNC2(&mp->mnt_lflag);

        if ( !locked)
	        FUNC1(mp);
}