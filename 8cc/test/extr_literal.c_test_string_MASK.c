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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static void FUNC2() {
    FUNC1("abc", "abc");
    FUNC1("abc", u8"abc");
    FUNC0('a', "abc"[0]);
    FUNC0(0, "abc"[3]);
    FUNC1("abcd", "ab" "cd");
    FUNC1("abcdef", "ab" "cd" "ef");

    char expected[] = { 65, 97, 7, 8, 12, 10, 13, 9, 11, 27, 7, 15, -99, -1, 18, 0 };
    FUNC1(expected, "Aa\a\b\f\n\r\t\v\e\7\17\235\xff\x012");
    FUNC0('c', L'c');
    FUNC0(0x3042, L'\u3042');
    FUNC0(0x3042, u'\u3042');
    FUNC0(0x3042, U'\u3042');

    // Make sure we can handle an identifier starting with "L", "u", "U" or "u8".
    int L = 1, u = 2, U = 3, u8 = 4;
    FUNC0(10, L + u + U + u8);
    int Lx = 1, ux = 2, Ux = 3, u8x = 4;
    FUNC0(10, Lx + ux + Ux + u8x);
}