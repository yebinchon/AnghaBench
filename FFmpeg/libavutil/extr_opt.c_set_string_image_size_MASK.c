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
typedef  int /*<<< orphan*/  AVOption ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC1 (int*,int*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(void *obj, const AVOption *o, const char *val, int *dst)
{
    int ret;

    if (!val || !FUNC2(val, "none")) {
        dst[0] =
        dst[1] = 0;
        return 0;
    }
    ret = FUNC1(dst, dst + 1, val);
    if (ret < 0)
        FUNC0(obj, AV_LOG_ERROR, "Unable to parse option value \"%s\" as image size\n", val);
    return ret;
}