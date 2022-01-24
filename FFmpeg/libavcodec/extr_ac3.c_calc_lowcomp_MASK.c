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
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int,int,int) ; 

__attribute__((used)) static inline int FUNC2(int a, int b0, int b1, int bin)
{
    if (bin < 7) {
        return FUNC1(a, b0, b1, 384);
    } else if (bin < 20) {
        return FUNC1(a, b0, b1, 320);
    } else {
        return FUNC0(a - 128, 0);
    }
}