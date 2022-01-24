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
struct TYPE_3__ {int mfx_iopattern; char* desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 TYPE_1__* qsv_iopatterns ; 

int FUNC2(void *log_ctx, int mfx_iopattern,
                           const char *extra_string)
{
    const char *desc = NULL;

    for (int i = 0; i < FUNC0(qsv_iopatterns); i++) {
        if (qsv_iopatterns[i].mfx_iopattern == mfx_iopattern) {
            desc = qsv_iopatterns[i].desc;
        }
    }
    if (!desc)
        desc = "unknown iopattern";

    FUNC1(log_ctx, AV_LOG_VERBOSE, "%s: %s\n", extra_string, desc);
    return 0;
}