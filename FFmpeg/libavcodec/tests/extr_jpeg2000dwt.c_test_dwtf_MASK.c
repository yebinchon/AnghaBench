#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {TYPE_2__ member_0; } ;
struct TYPE_10__ {TYPE_1__ member_0; } ;
typedef  TYPE_3__ DWTContext ;

/* Variables and functions */
 float FUNC0 (float) ; 
 int /*<<< orphan*/  FF_DWT97 ; 
 int MAX_W ; 
 int FUNC1 (TYPE_3__*,float*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*,float*) ; 
 int FUNC4 (TYPE_3__*,int**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,int,int,int,double) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC7(float *array, float *ref, int border[2][2], int decomp_levels, float max_diff) {
    int ret, j;
    DWTContext s1={{{0}}}, *s= &s1;
    double err2 = 0;

    ret = FUNC4(s,  border, decomp_levels, FF_DWT97);
    if (ret < 0) {
        FUNC5(stderr, "ff_jpeg2000_dwt_init failed\n");
        return 1;
    }
    ret = FUNC3(s, array);
    if (ret < 0) {
        FUNC5(stderr, "ff_dwt_encode failed\n");
        return 1;
    }
    ret = FUNC1(s, array);
    if (ret < 0) {
        FUNC5(stderr, "ff_dwt_encode failed\n");
        return 1;
    }
    for (j = 0; j<MAX_W * MAX_W; j++) {
        if (FUNC0(array[j] - ref[j]) > max_diff) {
            FUNC5(stderr, "missmatch at %d (%f != %f) decomp:%d border %d %d %d %d\n",
                    j, array[j], ref[j],decomp_levels, border[0][0], border[0][1], border[1][0], border[1][1]);
            return 2;
        }
        err2 += (array[j] - ref[j]) * (array[j] - ref[j]);
        array[j] = ref[j];
    }
    FUNC2(s);

    FUNC6("9/7f, decomp:%2d border %3d %3d %3d %3d err2:%20.3f\n",
           decomp_levels, border[0][0], border[0][1], border[1][0], border[1][1],
           err2 / ((border[0][1] - border[0][0])*(border[1][1] - border[1][0])));

    return 0;
}