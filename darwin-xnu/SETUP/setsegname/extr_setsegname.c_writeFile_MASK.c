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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int,void const*,size_t) ; 

__attribute__((used)) static int
FUNC2(int fd, const void * data, size_t length)
{
    int error = 0;

    if (length != (size_t)FUNC1(fd, data, length)) {
        error = -1;
    }

    if (error != 0) {
        FUNC0("couldn't write output");
    }

    return error;
}