#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct TYPE_13__ {scalar_t__ nitems; } ;
struct TYPE_10__ {int /*<<< orphan*/  nitems; } ;
struct TYPE_12__ {int is_linked; TYPE_8__ sects; TYPE_2__ extrelocs; scalar_t__ is_final_image; } ;
struct TYPE_9__ {scalar_t__ nitems; } ;
struct TYPE_11__ {TYPE_1__ relocs; } ;
typedef  TYPE_3__ KXLDSect ;
typedef  TYPE_4__ KXLDObject ;

/* Variables and functions */
 int FALSE ; 
 void* TRUE ; 
 TYPE_3__* FUNC0 (TYPE_8__*,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 

__attribute__((used)) static void
FUNC2(KXLDObject *object)
{
    u_int i = 0;

    if (FUNC1(object)) {
        object->is_linked = TRUE;
        return;
    }

    if (object->is_final_image) {
        object->is_linked = !object->extrelocs.nitems;
        return;
    }

    object->is_linked = TRUE;
    for (i = 0; i < object->sects.nitems; ++i) {
        KXLDSect *sect = FUNC0(&object->sects, i);
        if (sect->relocs.nitems) {
            object->is_linked = FALSE;
            break;
        }
    }
}