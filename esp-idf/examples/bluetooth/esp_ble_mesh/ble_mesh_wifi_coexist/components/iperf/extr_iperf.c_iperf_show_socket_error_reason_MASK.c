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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

int FUNC2(const char *str, int sockfd)
{
    int err = errno;
    if (err != 0) {
        FUNC0(TAG, "%s error, error code: %d, reason: %s", str, err, FUNC1(err));
    }

    return err;
}