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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC1 (char const*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC3 (char const*,char**,int) ; 

int FUNC4(const char *name, uint64_t* channel_layout, int* nb_channels)
{
    int nb = 0;
    char *end;
    uint64_t layout = FUNC1(name);

    if (layout) {
        *channel_layout = layout;
        *nb_channels = FUNC2(layout);
        return 0;
    }

    nb = FUNC3(name, &end, 10);
    if (!errno && *end  == 'C' && *(end + 1) == '\0' && nb > 0 && nb < 64) {
        *channel_layout = 0;
        *nb_channels = nb;
        return 0;
    }

    return FUNC0(EINVAL);
}