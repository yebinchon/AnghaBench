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
struct TYPE_3__ {float in_pad; float const* input_mirror_modifier; } ;
typedef  TYPE_1__ V360Context ;

/* Variables and functions */
 float M_PI ; 
 float FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (float const) ; 
 int /*<<< orphan*/  FUNC3 (float const) ; 
 int FUNC4 (float) ; 
 float FUNC5 (float const,float const) ; 

__attribute__((used)) static void FUNC6(const V360Context *s,
                            const float *vec, int width, int height,
                            uint16_t us[4][4], uint16_t vs[4][4], float *du, float *dv)
{
    const float scale = 1.f - s->in_pad;

    const float ew = width / 2.f;
    const float eh = height;

    const float h     = FUNC5(vec[0], vec[1]);
    const float lh    = h > 0.f ? h : 1.f;
    const float theta = FUNC0(FUNC3(vec[2])) / M_PI;

    float uf = (theta * (-vec[0] / lh) * s->input_mirror_modifier[0] * scale + 0.5f) * ew;
    float vf = (theta * (-vec[1] / lh) * s->input_mirror_modifier[1] * scale + 0.5f) * eh;

    int ui, vi;
    int u_shift;

    if (vec[2] >= 0.f) {
        u_shift = 0;
    } else {
        u_shift = FUNC2(ew);
        uf = ew - uf;
    }

    ui = FUNC4(uf);
    vi = FUNC4(vf);

    *du = uf - ui;
    *dv = vf - vi;

    for (int i = -1; i < 3; i++) {
        for (int j = -1; j < 3; j++) {
            us[i + 1][j + 1] = FUNC1(u_shift + ui + j, 0, width  - 1);
            vs[i + 1][j + 1] = FUNC1(          vi + i, 0, height - 1);
        }
    }
}