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
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,...) ; 
 scalar_t__ wjobfd ; 
 int FUNC1 (scalar_t__,char*,int) ; 

__attribute__((used)) static void
FUNC2(int n)
{
    char c = '+';
    if (wjobfd >= 0) {
        FUNC0(wjobfd, F_SETFL, FUNC0(wjobfd, F_GETFL)|O_NONBLOCK);
        for (; n>1; n--) {
            if (FUNC1(wjobfd, &c, 1) != 1) {
                /* ignore error; nothing we can do anyway */
            }
        }
    }
}