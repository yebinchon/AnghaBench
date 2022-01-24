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
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/  const) ; 
 int M_PI ; 
 double NAN ; 
 int FUNC1 (double,double) ; 
 double FUNC2 (double,double) ; 

double FUNC3(const int32_t matrix[9])
{
    double rotation, scale[2];

    scale[0] = FUNC2(FUNC0(matrix[0]), FUNC0(matrix[3]));
    scale[1] = FUNC2(FUNC0(matrix[1]), FUNC0(matrix[4]));

    if (scale[0] == 0.0 || scale[1] == 0.0)
        return NAN;

    rotation = FUNC1(FUNC0(matrix[1]) / scale[1],
                     FUNC0(matrix[0]) / scale[0]) * 180 / M_PI;

    return -rotation;
}