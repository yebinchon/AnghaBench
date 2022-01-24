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
struct TYPE_9__ {TYPE_1__* oformat; TYPE_2__* iformat; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* free_device_capabilities ) (TYPE_3__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  (* free_device_capabilities ) (TYPE_3__*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_3__ AVFormatContext ;
typedef  int /*<<< orphan*/  AVDeviceCapabilitiesQuery ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 

void FUNC4(AVDeviceCapabilitiesQuery **caps, AVFormatContext *s)
{
    if (!s || !caps || !(*caps))
        return;
    FUNC0(s->iformat || s->oformat);
    if (s->iformat) {
        if (s->iformat->free_device_capabilities)
            s->iformat->free_device_capabilities(s, *caps);
    } else {
        if (s->oformat->free_device_capabilities)
            s->oformat->free_device_capabilities(s, *caps);
    }
    FUNC1(caps);
}