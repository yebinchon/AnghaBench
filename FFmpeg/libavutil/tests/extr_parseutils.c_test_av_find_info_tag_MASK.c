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
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 int FUNC0 (char const**) ; 
 scalar_t__ FUNC1 (char*,int,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char const*,...) ; 

__attribute__((used)) static void FUNC3(void)
{
    static const char args[] = "?tag1=val1&tag2=val2&tag3=val3&tag41=value 41&tag42=random1";
    static const char *tags[] = {"tag1", "tag2", "tag3", "tag4", "tag41", "41", "random1"};
    char buff[16];
    int i;

    for (i = 0; i < FUNC0(tags); ++i) {
        if (FUNC1(buff, sizeof(buff), tags[i], args))
            FUNC2("%d. %s found: %s\n", i, tags[i], buff);
        else
            FUNC2("%d. %s not found\n", i, tags[i]);
    }
}