#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_2__* ref; } ;
struct TYPE_12__ {int /*<<< orphan*/  poc; } ;
struct TYPE_11__ {size_t nb_refs; TYPE_2__** ref; int /*<<< orphan*/ * list; } ;
typedef  TYPE_1__ RefPicList ;
typedef  TYPE_2__ HEVCFrame ;
typedef  TYPE_3__ HEVCContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  ENOMEM ; 
 size_t HEVC_MAX_REFS ; 
 TYPE_2__* FUNC1 (TYPE_3__*,int) ; 
 TYPE_2__* FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC4(HEVCContext *s, RefPicList *list,
                             int poc, int ref_flag)
{
    HEVCFrame *ref = FUNC1(s, poc);

    if (ref == s->ref || list->nb_refs >= HEVC_MAX_REFS)
        return AVERROR_INVALIDDATA;

    if (!ref) {
        ref = FUNC2(s, poc);
        if (!ref)
            return FUNC0(ENOMEM);
    }

    list->list[list->nb_refs] = ref->poc;
    list->ref[list->nb_refs]  = ref;
    list->nb_refs++;

    FUNC3(ref, ref_flag);
    return 0;
}