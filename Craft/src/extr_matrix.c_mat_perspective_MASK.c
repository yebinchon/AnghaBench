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
 float PI ; 
 int /*<<< orphan*/  FUNC0 (float*,float,float,float,float,float,float) ; 
 float FUNC1 (float) ; 

void FUNC2(
    float *matrix, float fov, float aspect,
    float znear, float zfar)
{
    float ymax, xmax;
    ymax = znear * FUNC1(fov * PI / 360.0);
    xmax = ymax * aspect;
    FUNC0(matrix, -xmax, xmax, -ymax, ymax, znear, zfar);
}