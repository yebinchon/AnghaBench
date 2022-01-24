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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int const) ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int const,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 

__attribute__((used)) static void FUNC6(const char *filename, const char *msg)
{
    char buf[32] = { 0 };
    const int fd = FUNC3(filename, O_RDONLY);
    FUNC1(-1, fd);

    int r = FUNC4(fd, buf, sizeof(buf));
    FUNC1(-1, r);
    FUNC0(0, FUNC5(msg, buf));

    FUNC0(0, FUNC2(fd));
}