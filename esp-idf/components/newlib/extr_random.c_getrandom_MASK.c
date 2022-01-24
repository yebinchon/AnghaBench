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
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t) ; 

ssize_t FUNC2(void *buf, size_t buflen, unsigned int flags)
{
    // Flags are ignored because:
    // - esp_random is non-blocking so it works for both blocking and non-blocking calls,
    // - don't have opportunity so set som other source of entropy.

    FUNC0(TAG, "getrandom(buf=0x%x, buflen=%d, flags=%u)", (int) buf, buflen, flags);

    if (buf == NULL) {
        errno = EFAULT;
        FUNC0(TAG, "getrandom returns -1 (EFAULT)");
        return -1;
    }

    FUNC1(buf, buflen);

    FUNC0(TAG, "getrandom returns %d", buflen);
    return buflen;
}