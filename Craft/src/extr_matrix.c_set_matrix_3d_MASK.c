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
 int /*<<< orphan*/  FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (float*) ; 
 int /*<<< orphan*/  FUNC2 (float*,float*,float*) ; 
 int /*<<< orphan*/  FUNC3 (float*,int,int,int,int,float,float) ; 
 int /*<<< orphan*/  FUNC4 (float*,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC5 (float*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC6 (float*,float,float,float) ; 
 int /*<<< orphan*/  FUNC7 (float) ; 

void FUNC8(
    float *matrix, int width, int height,
    float x, float y, float z, float rx, float ry,
    float fov, int ortho, int radius)
{
    float a[16];
    float b[16];
    float aspect = (float)width / height;
    float znear = 0.125;
    float zfar = radius * 32 + 64;
    FUNC1(a);
    FUNC6(b, -x, -y, -z);
    FUNC2(a, b, a);
    FUNC5(b, FUNC0(rx), 0, FUNC7(rx), ry);
    FUNC2(a, b, a);
    FUNC5(b, 0, 1, 0, -rx);
    FUNC2(a, b, a);
    if (ortho) {
        int size = ortho;
        FUNC3(b, -size * aspect, size * aspect, -size, size, -zfar, zfar);
    }
    else {
        FUNC4(b, fov, aspect, znear, zfar);
    }
    FUNC2(a, b, a);
    FUNC1(matrix);
    FUNC2(matrix, a, matrix);
}