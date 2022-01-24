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
 scalar_t__ HAVE_BIGENDIAN ; 
 unsigned int FUNC0 (unsigned int) ; 

__attribute__((used)) static void FUNC1(void *p1, void *p2, unsigned size, int key, unsigned *key_ptr)
{
    unsigned *d1 = p1;
    unsigned *d2 = p2;
    unsigned k = *key_ptr;

    size >>= 2;

    while (size > 0) {
        *d2 = *d1 ^ (HAVE_BIGENDIAN ? FUNC0(k) : k);
        k += key;
        d1++;
        d2++;
        size--;
    }

    *key_ptr = k;
}