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
 int /*<<< orphan*/  FUNC0 (int,char) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2() {
    FUNC1("compound assignment");

    int a = 0;
    a += 5;
    FUNC0(5, a);
    a -= 2;
    FUNC0(3, a);
    a *= 10;
    FUNC0(30, a);
    a /= 2;
    FUNC0(15, a);
    a %= 6;
    FUNC0(3, a);

    a = 14;
    a &= 7;
    FUNC0(6, a);
    a |= 8;
    FUNC0(14, a);
    a ^= 3;
    FUNC0(13, a);
    a <<= 2;
    FUNC0(52, a);
    a >>= 2;
    FUNC0(13, a);

    char b = 0;
    b += 5;
    FUNC0(5, b);
    b -= 2;
    FUNC0(3, b);
    b *= 10;
    FUNC0(30, b);
    b /= 2;
    FUNC0(15, b);
    b %= 6;
    FUNC0(3, b);

    b = 14;
    b &= 7;
    FUNC0(6, b);
    b |= 8;
    FUNC0(14, b);
    b ^= 3;
    FUNC0(13, b);
    b <<= 2;
    FUNC0(52, b);
    b >>= 2;
    FUNC0(13, b);
}