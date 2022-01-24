#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_3__* name; scalar_t__ namelen; } ;
struct TYPE_8__ {TYPE_1__ Slnk; } ;
struct TYPE_9__ {scalar_t__ dn_type; TYPE_2__ dn_typeinfo; } ;
typedef  TYPE_3__ devnode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ DEV_SLNK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVFSNODE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

void
FUNC4(devnode_t * dnp)
{
#if CONFIG_MACF
	mac_devfs_label_destroy(dnp);
#endif
    if (dnp->dn_type == DEV_SLNK) {
        FUNC1(dnp->dn_typeinfo.Slnk.namelen + 1);
	FUNC2(dnp->dn_typeinfo.Slnk.name, M_DEVFSNODE);
    }
    FUNC0();
    FUNC2(dnp, M_DEVFSNODE);
}