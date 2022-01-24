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
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void
FUNC5()
{
    char *name = FUNC0();
    int fd = FUNC2(name);
    FUNC3(fd, "put 0 0 1 1\r\n");
    FUNC3(fd, "a\r\n");
    FUNC1(fd, "INSERTED 1\r\n");

    FUNC3(fd, "peek 1\r\n");
    FUNC1(fd, "FOUND 1 1\r\n");
    FUNC1(fd, "a\r\n");

    FUNC4(name);
}