#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_2__* object_list; } ;
struct TYPE_12__ {struct TYPE_12__* region_list_next; struct TYPE_12__* next; struct TYPE_12__* display_list; struct TYPE_12__* object_list_next; int /*<<< orphan*/  object_id; } ;
struct TYPE_11__ {TYPE_2__* display_list; } ;
typedef  TYPE_1__ DVBSubRegion ;
typedef  TYPE_2__ DVBSubObjectDisplay ;
typedef  TYPE_2__ DVBSubObject ;
typedef  TYPE_4__ DVBSubContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**) ; 
 TYPE_2__* FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(DVBSubContext *ctx, DVBSubRegion *region)
{
    DVBSubObject *object, *obj2, **obj2_ptr;
    DVBSubObjectDisplay *display, *obj_disp, **obj_disp_ptr;

    while (region->display_list) {
        display = region->display_list;

        object = FUNC2(ctx, display->object_id);

        if (object) {
            obj_disp_ptr = &object->display_list;
            obj_disp = *obj_disp_ptr;

            while (obj_disp && obj_disp != display) {
                obj_disp_ptr = &obj_disp->object_list_next;
                obj_disp = *obj_disp_ptr;
            }

            if (obj_disp) {
                *obj_disp_ptr = obj_disp->object_list_next;

                if (!object->display_list) {
                    obj2_ptr = &ctx->object_list;
                    obj2 = *obj2_ptr;

                    while (obj2 != object) {
                        FUNC0(obj2);
                        obj2_ptr = &obj2->next;
                        obj2 = *obj2_ptr;
                    }

                    *obj2_ptr = obj2->next;

                    FUNC1(&obj2);
                }
            }
        }

        region->display_list = display->region_list_next;

        FUNC1(&display);
    }

}