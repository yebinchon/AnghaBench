#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* vnode_t ;
struct TYPE_7__ {TYPE_2__* v_mount; } ;
struct TYPE_6__ {TYPE_1__* mnt_vtable; } ;
struct TYPE_5__ {int /*<<< orphan*/  vfc_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  MFSNAMELEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void 
FUNC1(vnode_t vp, char * buf)
{
        FUNC0(buf, vp->v_mount->mnt_vtable->vfc_name, MFSNAMELEN);
}