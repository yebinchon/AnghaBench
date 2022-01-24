#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  mfxStatus ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,char*,char const*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const**) ; 

int FUNC2(void *log_ctx, mfxStatus err,
                       const char *error_string)
{
    const char *desc;
    int ret;
    ret = FUNC1(err, &desc);
    FUNC0(log_ctx, AV_LOG_ERROR, "%s: %s (%d)\n", error_string, desc, err);
    return ret;
}