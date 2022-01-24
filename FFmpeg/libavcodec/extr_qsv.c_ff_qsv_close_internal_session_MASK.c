#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  va_device_ref; int /*<<< orphan*/ * session; } ;
typedef  TYPE_1__ QSVSession ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(QSVSession *qs)
{
    if (qs->session) {
        FUNC0(qs->session);
        qs->session = NULL;
    }
#ifdef AVCODEC_QSV_LINUX_SESSION_HANDLE
    av_buffer_unref(&qs->va_device_ref);
#endif
    return 0;
}