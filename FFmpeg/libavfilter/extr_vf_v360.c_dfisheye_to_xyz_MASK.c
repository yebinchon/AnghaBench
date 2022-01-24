#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {float out_pad; } ;
typedef  TYPE_1__ V360Context ;

/* Variables and functions */
 float const M_PI_2 ; 
 float FUNC0 (float const) ; 
 float FUNC1 (float const,float const) ; 
 int /*<<< orphan*/  FUNC2 (float*) ; 
 float FUNC3 (float const) ; 

__attribute__((used)) static void FUNC4(const V360Context *s,
                            int i, int j, int width, int height,
                            float *vec)
{
    const float scale = 1.f + s->out_pad;

    const float ew = width / 2.f;
    const float eh = height;

    const int ei = i >= ew ? i - ew : i;
    const float m = i >= ew ? -1.f : 1.f;

    const float uf = ((2.f * ei) / ew - 1.f) * scale;
    const float vf = ((2.f *  j) / eh - 1.f) * scale;

    const float h     = FUNC1(uf, vf);
    const float lh    = h > 0.f ? h : 1.f;
    const float theta = m * M_PI_2 * (1.f - h);

    const float sin_theta = FUNC3(theta);
    const float cos_theta = FUNC0(theta);

    vec[0] = cos_theta * m * -uf / lh;
    vec[1] = cos_theta *     -vf / lh;
    vec[2] = sin_theta;

    FUNC2(vec);
}