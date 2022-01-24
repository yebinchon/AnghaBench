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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int*,int*) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(char **map, int *ch, char delim, int max_ch)
{
    char *next;
    int len;
    int n = 0;
    if (!*map)
        return FUNC0(EINVAL);
    next = FUNC1(*map, delim);
    if (!next && delim == '-')
        return FUNC0(EINVAL);
    len = FUNC3(*map);
    FUNC2(*map, "%d%n", ch, &n);
    if (n != len)
        return FUNC0(EINVAL);
    if (*ch < 0 || *ch > max_ch)
        return FUNC0(EINVAL);
    *map = next;
    return 0;
}