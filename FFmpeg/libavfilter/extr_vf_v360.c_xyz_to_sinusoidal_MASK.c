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
 float const M_PI ; 
 float const M_PI_2 ; 
 float FUNC0 (float const) ; 
 float FUNC1 (float const,float const) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 float FUNC3 (float const) ; 
 int FUNC4 (float) ; 

__attribute__((used)) static void FUNC5(const V360Context *s,
                              const float *vec, int width, int height,
                              uint16_t us[4][4], uint16_t vs[4][4], float *du, float *dv)
{
    const float theta = FUNC0(-vec[1]) * s->input_mirror_modifier[1];
    const float phi   = FUNC1(vec[0], -vec[2]) * s->input_mirror_modifier[0] * FUNC3(theta);
    float uf, vf;
    int ui, vi;

    uf = (phi   / M_PI   + 1.f) * width  / 2.f;
    vf = (theta / M_PI_2 + 1.f) * height / 2.f;
    ui = FUNC4(uf);
    vi = FUNC4(vf);

    *du = uf - ui;
    *dv = vf - vi;

    for (int i = -1; i < 3; i++) {
        for (int j = -1; j < 3; j++) {
            us[i + 1][j + 1] = FUNC2(ui + j, 0, width  - 1);
            vs[i + 1][j + 1] = FUNC2(vi + i, 0, height - 1);
        }
    }
}