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
typedef  enum AVColorPrimaries { ____Placeholder_AVColorPrimaries } AVColorPrimaries ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,double**) ; 
 int /*<<< orphan*/  FUNC1 (double**,double**) ; 
 int /*<<< orphan*/  FUNC2 (double**,double**,double**) ; 
 int /*<<< orphan*/ * primaries_table ; 
 int /*<<< orphan*/ * whitepoint_table ; 

__attribute__((used)) static void FUNC3(enum AVColorPrimaries in, enum AVColorPrimaries out,
                               double rgb2rgb[3][3]) {
    double rgb2xyz[3][3], xyz2rgb[3][3];

    FUNC0(&primaries_table[out], &whitepoint_table[out], rgb2xyz);
    FUNC1(rgb2xyz, xyz2rgb);
    FUNC0(&primaries_table[in], &whitepoint_table[in], rgb2xyz);
    FUNC2(rgb2rgb, rgb2xyz, xyz2rgb);
}