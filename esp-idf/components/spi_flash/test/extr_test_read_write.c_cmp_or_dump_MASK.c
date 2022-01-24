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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (void const*,void const*,size_t) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC2(const void *a, const void *b, size_t len)
{
    int r = FUNC1(a, b, len);
    if (r != 0) {
        for (int i = 0; i < len; i++) {
            FUNC0(stderr, "%02x", ((unsigned char *) a)[i]);
        }
        FUNC0(stderr, "\n");
        for (int i = 0; i < len; i++) {
            FUNC0(stderr, "%02x", ((unsigned char *) b)[i]);
        }
        FUNC0(stderr, "\n");
    }
    return r;
}