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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static inline void FUNC4(int fd, const char *str, const char *msg)
{
    char buf[FUNC3(str)];
    FUNC0(FUNC3(str), FUNC2(fd, buf, FUNC3(str)), msg);
    FUNC1(str, buf, FUNC3(str), msg);
}