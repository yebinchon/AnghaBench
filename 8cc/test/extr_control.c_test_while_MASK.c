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
    while (i <= 100)
        acc = acc + i++;
    FUNC0(5050, acc);

    acc = 1;
    i = 0;
    while (i <= 100) {
        acc = acc + i++;
    }
    FUNC0(5051, acc);

    acc = 0;
    i = 0;
    while (i < 10) {
        if (i++ < 5) continue;
        acc += i;
        if (i == 9) break;
    }
    FUNC0(6 + 7 + 8 + 9, acc);

    i = 0;
    while (i++ < 100)
        ;

    i = 0;
    while (0.5) {
        i = 67;
        break;
    }
    FUNC0(67, i);
}