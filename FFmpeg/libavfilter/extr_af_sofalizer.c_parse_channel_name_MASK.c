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
typedef  long long int64_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 long long FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*,char*,int*) ; 

__attribute__((used)) static int FUNC3(char **arg, int *rchannel, char *buf)
{
    int len, i, channel_id = 0;
    int64_t layout, layout0;

    /* try to parse a channel name, e.g. "FL" */
    if (FUNC2(*arg, "%7[A-Z]%n", buf, &len)) {
        layout0 = layout = FUNC1(buf);
        /* channel_id <- first set bit in layout */
        for (i = 32; i > 0; i >>= 1) {
            if (layout >= 1LL << i) {
                channel_id += i;
                layout >>= i;
            }
        }
        /* reject layouts that are not a single channel */
        if (channel_id >= 64 || layout0 != 1LL << channel_id)
            return FUNC0(EINVAL);
        *rchannel = channel_id;
        *arg += len;
        return 0;
    }
    return FUNC0(EINVAL);
}