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
 int PI ; 
 int /*<<< orphan*/  FUNC0 (float*) ; 
 int /*<<< orphan*/  FUNC1 (float*,float*,float*) ; 
 int /*<<< orphan*/  FUNC2 (float*,float,float,float,float,int,int) ; 
 int /*<<< orphan*/  FUNC3 (float*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (float*,float,float,int /*<<< orphan*/ ) ; 

void FUNC5(float *matrix, int width, int height, int scale) {
    float a[16];
    float b[16];
    float aspect = (float)width / height;
    float size = 64 * scale;
    float box = height / size / 2;
    float xoffset = 1 - size / width * 2;
    float yoffset = 1 - size / height * 2;
    FUNC0(a);
    FUNC3(b, 0, 1, 0, -PI / 4);
    FUNC1(a, b, a);
    FUNC3(b, 1, 0, 0, -PI / 10);
    FUNC1(a, b, a);
    FUNC2(b, -box * aspect, box * aspect, -box, box, -1, 1);
    FUNC1(a, b, a);
    FUNC4(b, -xoffset, -yoffset, 0);
    FUNC1(a, b, a);
    FUNC0(matrix);
    FUNC1(matrix, a, matrix);
}