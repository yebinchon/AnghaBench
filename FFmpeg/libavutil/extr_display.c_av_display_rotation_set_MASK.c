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
 int FUNC0 (double) ; 
 double M_PI ; 
 double FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 double FUNC3 (double) ; 

void FUNC4(int32_t matrix[9], double angle)
{
    double radians = -angle * M_PI / 180.0f;
    double c = FUNC1(radians);
    double s = FUNC3(radians);

    FUNC2(matrix, 0, 9 * sizeof(int32_t));

    matrix[0] = FUNC0(c);
    matrix[1] = FUNC0(-s);
    matrix[3] = FUNC0(s);
    matrix[4] = FUNC0(c);
    matrix[8] = 1 << 30;
}