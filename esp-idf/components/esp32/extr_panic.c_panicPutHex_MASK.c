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
 int /*<<< orphan*/  FUNC0 (char) ; 

__attribute__((used)) static void FUNC1(int a)
{
    int x;
    int c;
    for (x = 0; x < 8; x++) {
        c = (a >> 28) & 0xf;
        if (c < 10) {
            FUNC0('0' + c);
        } else {
            FUNC0('a' + c - 10);
        }
        a <<= 4;
    }
}