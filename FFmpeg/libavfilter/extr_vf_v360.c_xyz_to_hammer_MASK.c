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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {float* input_mirror_modifier; } ;
typedef  TYPE_1__ V360Context ;

/* Variables and functions */
 float FUNC0 (float const,float const) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 float FUNC2 (float const) ; 
 int FUNC3 (float) ; 
 float const FUNC4 (float const) ; 
 float const FUNC5 (float) ; 

__attribute__((used)) static void FUNC6(const V360Context *s,
                          const float *vec, int width, int height,
                          uint16_t us[4][4], uint16_t vs[4][4], float *du, float *dv)
{
    const float theta = FUNC0(vec[0], -vec[2]) * s->input_mirror_modifier[0];

    const float z = FUNC5(1.f + FUNC5(1.f - vec[1] * vec[1]) * FUNC2(theta * 0.5f));
    const float x = FUNC5(1.f - vec[1] * vec[1]) * FUNC4(theta * 0.5f) / z;
    const float y = -vec[1] / z * s->input_mirror_modifier[1];
    float uf, vf;
    int ui, vi;

    uf = (x + 1.f) * width  / 2.f;
    vf = (y + 1.f) * height / 2.f;
    ui = FUNC3(uf);
    vi = FUNC3(vf);

    *du = uf - ui;
    *dv = vf - vi;

    for (int i = -1; i < 3; i++) {
        for (int j = -1; j < 3; j++) {
            us[i + 1][j + 1] = FUNC1(ui + j, 0, width  - 1);
            vs[i + 1][j + 1] = FUNC1(vi + i, 0, height - 1);
        }
    }
}