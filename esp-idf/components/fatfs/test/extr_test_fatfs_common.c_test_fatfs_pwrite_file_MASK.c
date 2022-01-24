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
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ,char*) ; 

void FUNC7(const char *filename)
{
    int fd = FUNC3(filename, O_WRONLY | O_CREAT | O_TRUNC);
    FUNC1(-1, fd);
    FUNC0(0, FUNC2(fd));

    FUNC6(filename, 0, "Hello");
    FUNC5(filename, "Hello");

    FUNC6(filename, FUNC4("Hello"), ", world!");
    FUNC5(filename, "Hello, world!");
    FUNC6(filename, FUNC4("Hello, "), "Dolly");
    FUNC5(filename, "Hello, Dolly!");
}