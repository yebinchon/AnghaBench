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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 scalar_t__ SCALE_DIV_512 ; 
 scalar_t__ SCALE_ONE_POS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (float) ; 

__attribute__((used)) static inline uint8_t FUNC2(float coef)
{
    return FUNC0(FUNC1(coef)*4 +  6 + SCALE_ONE_POS - SCALE_DIV_512);
}