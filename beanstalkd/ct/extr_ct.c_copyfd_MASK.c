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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  errno ; 
 size_t FUNC1 (char*,int,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,char*,int) ; 

__attribute__((used)) static void
FUNC3(FILE *out, int in)
{
    ssize_t n;
    char buf[1024]; /* arbitrary size */

    while ((n = FUNC2(in, buf, sizeof(buf))) != 0) {
        if (FUNC1(buf, 1, n, out) != (size_t)n) {
            FUNC0(3, errno, "fwrite");
        }
    }
}