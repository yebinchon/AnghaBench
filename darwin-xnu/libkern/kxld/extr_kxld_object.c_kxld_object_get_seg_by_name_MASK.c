#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct TYPE_9__ {scalar_t__ nitems; } ;
struct TYPE_8__ {TYPE_6__ segs; } ;
struct TYPE_7__ {int /*<<< orphan*/  segname; } ;
typedef  TYPE_1__ KXLDSeg ;
typedef  TYPE_2__ KXLDObject ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_6__*,scalar_t__) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,int) ; 

KXLDSeg *
FUNC2(const KXLDObject *object, const char *segname)
{
    KXLDSeg *seg = NULL;
    u_int i = 0;

    for (i = 0; i < object->segs.nitems; ++i) {
        seg = FUNC0(&object->segs, i);

        if (FUNC1(segname, seg->segname, sizeof(seg->segname))) break;

        seg = NULL;
    }

    return seg;
}