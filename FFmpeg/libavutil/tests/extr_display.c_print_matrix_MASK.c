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
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

__attribute__((used)) static void FUNC1(int32_t matrix[9])
{
    int i, j;

    for (i = 0; i < 3; ++i) {
        for (j = 0; j < 3 - 1; ++j)
            FUNC0("%d ", matrix[i*3 + j]);

        FUNC0("%d\n", matrix[i*3 + j]);
    }
}