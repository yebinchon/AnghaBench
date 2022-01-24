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
 int /*<<< orphan*/  FUNC0 (int) ; 
 float FUNC1 (float) ; 

__attribute__((used)) static inline void FUNC2(float A, float B, float epsilon)
{
    float diff = FUNC1(A - B);
    float absa = FUNC1(A);
    float absb = FUNC1(B);
    float largest = (absb > absa) ? absb : absa;
    FUNC0(diff <= largest * epsilon);
}