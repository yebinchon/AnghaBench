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
typedef  int /*<<< orphan*/  V360Context ;

/* Variables and functions */
 float M_PI ; 
 float M_PI_2 ; 
 float FUNC0 (float const) ; 
 float FUNC1 (float const) ; 

__attribute__((used)) static void FUNC2(const V360Context *s,
                            int i, int j, int width, int height,
                            float *vec)
{
    const float phi   = ((2.f * i) / width  - 1.f) * M_PI;
    const float theta = ((2.f * j) / height - 1.f) * M_PI_2;

    const float sin_phi   = FUNC1(phi);
    const float cos_phi   = FUNC0(phi);
    const float sin_theta = FUNC1(theta);
    const float cos_theta = FUNC0(theta);

    vec[0] =  cos_theta * sin_phi;
    vec[1] = -sin_theta;
    vec[2] = -cos_theta * cos_phi;
}