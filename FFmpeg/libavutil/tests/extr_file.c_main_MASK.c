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
typedef  char uint8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char**,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

int FUNC3(void)
{
    uint8_t *buf;
    size_t size;
    if (FUNC0("file.c", &buf, &size, 0, NULL) < 0)
        return 1;

    buf[0] = 's';
    FUNC2("%s", buf);
    FUNC1(buf, size);
    return 0;
}