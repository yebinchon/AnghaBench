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
typedef  int /*<<< orphan*/  dw128_t ;
typedef  int /*<<< orphan*/  dsfmt_t ;

/* Variables and functions */
 int DSFMT_N64 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC2(dsfmt_t *dsfmt, double array[], int size) {
    FUNC0(size % 2 == 0);
    FUNC0(size >= DSFMT_N64);
    FUNC1(dsfmt, (dw128_t *)array, size / 2);
}