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
    goto x;
    acc = 5;
 x: FUNC0(0, acc);

    int i = 0;
    acc = 0;
 y: if (i > 10) goto z;
    acc += i++;
    goto y;
 z: if (i > 11) goto a;
    FUNC0(55, acc);
    i++;
    goto y;
 a:
    ;
}