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
 int /*<<< orphan*/  FUNC1 (float*,float**,float**,int,int,int,int,int,int,int,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC2 (float*,float*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (float*) ; 
 int /*<<< orphan*/  FUNC4 (float*,float*,float*) ; 
 int /*<<< orphan*/  FUNC5 (float*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC6 (float*,float,float,float) ; 
 int /*<<< orphan*/  FUNC7 (float) ; 

void FUNC8(
    float *data,
    float x, float y, float z, float rx, float ry)
{
    float ao[6][4] = {0};
    float light[6][4] = {
        {0.8, 0.8, 0.8, 0.8},
        {0.8, 0.8, 0.8, 0.8},
        {0.8, 0.8, 0.8, 0.8},
        {0.8, 0.8, 0.8, 0.8},
        {0.8, 0.8, 0.8, 0.8},
        {0.8, 0.8, 0.8, 0.8}
    };
    FUNC1(
        data, ao, light,
        1, 1, 1, 1, 1, 1,
        226, 224, 241, 209, 225, 227,
        0, 0, 0, 0.4);
    float ma[16];
    float mb[16];
    FUNC3(ma);
    FUNC5(mb, 0, 1, 0, rx);
    FUNC4(ma, mb, ma);
    FUNC5(mb, FUNC0(rx), 0, FUNC7(rx), -ry);
    FUNC4(ma, mb, ma);
    FUNC2(data, ma, 36, 3, 10);
    FUNC6(mb, x, y, z);
    FUNC4(ma, mb, ma);
    FUNC2(data, ma, 36, 0, 10);
}