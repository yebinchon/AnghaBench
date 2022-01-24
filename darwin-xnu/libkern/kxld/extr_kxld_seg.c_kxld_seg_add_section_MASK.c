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
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_9__ {scalar_t__ nitems; } ;
struct TYPE_8__ {TYPE_6__ sects; int /*<<< orphan*/  segname; } ;
typedef  TYPE_1__ KXLDSeg ;
typedef  TYPE_1__ KXLDSect ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  finish ; 
 TYPE_1__** FUNC1 (TYPE_6__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

kern_return_t
FUNC4(KXLDSeg *seg, KXLDSect *sect)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDSect **sectp = NULL;
    u_int i;

    FUNC0(seg);
    FUNC0(sect);
    FUNC2(FUNC3(seg->segname, sect->segname, sizeof(seg->segname)),
        finish, rval=KERN_FAILURE);
    
    /* Add the section into the section index */

    for (i = 0; i < seg->sects.nitems; ++i) {
        sectp = FUNC1(&seg->sects, i);
        if (NULL == *sectp) {
            *sectp = sect;
            break;
        }
    }
    FUNC2(i < seg->sects.nitems, finish, rval=KERN_FAILURE);

    rval = KERN_SUCCESS;

finish:

    return rval;
}