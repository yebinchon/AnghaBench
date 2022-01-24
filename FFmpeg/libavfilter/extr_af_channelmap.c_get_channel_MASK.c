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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,char) ; 

__attribute__((used)) static int FUNC4(char **map, uint64_t *ch, char delim)
{
    char *next = FUNC3(*map, delim);
    if (!next && delim == '-')
        return FUNC0(EINVAL);
    *ch = FUNC1(*map);
    if (FUNC2(*ch) != 1)
        return FUNC0(EINVAL);
    *map = next;
    return 0;
}