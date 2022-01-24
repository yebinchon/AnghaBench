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

__attribute__((used)) static void FUNC1() {
    int acc = 0;
    int i = 0;
    do {
        acc = acc + i++;
    } while (i <= 100);
    FUNC0(5050, acc);

    i = 0;
    do { i = 37; } while (0);
    FUNC0(37, i);

    acc = 0;
    i = 0;
    do {
        if (i++ < 5) continue;
        acc += i;
        if (i == 9) break;
    } while (i < 10);
    FUNC0(6 + 7 + 8 + 9, acc);

    i = 0;
    do {} while (i++ < 100);

    i = 0;
    do; while (i++ < 100);

    float v = 1;
    i = 70;
    do i++; while (v -= 0.5);
    FUNC0(72, i);
}