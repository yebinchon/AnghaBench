#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_5__ {float fin_pad; float in_width; float in_pad; float in_height; int* in_cubemap_face_order; } ;
typedef  TYPE_1__ V360Context ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (float const) ; 
 int FUNC2 (float) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*,float,float,int,float*,float*,int*) ; 
 int /*<<< orphan*/  FUNC4 (float) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__ const*,float const*,float*,float*,int*) ; 

__attribute__((used)) static void FUNC6(const V360Context *s,
                           const float *vec, int width, int height,
                           uint16_t us[4][4], uint16_t vs[4][4], float *du, float *dv)
{
    const float scalew = s->fin_pad > 0 ? 1.f - s->fin_pad / (s->in_width  / 3.f) : 1.f - s->in_pad;
    const float scaleh = s->fin_pad > 0 ? 1.f - s->fin_pad / (s->in_height / 2.f) : 1.f - s->in_pad;
    const float ew = width  / 3.f;
    const float eh = height / 2.f;
    float uf, vf;
    int ui, vi;
    int ewi, ehi;
    int direction, face;
    int u_face, v_face;

    FUNC5(s, vec, &uf, &vf, &direction);

    uf *= scalew;
    vf *= scaleh;

    face = s->in_cubemap_face_order[direction];
    u_face = face % 3;
    v_face = face / 3;
    ewi = FUNC1(ew * (u_face + 1)) - FUNC1(ew * u_face);
    ehi = FUNC1(eh * (v_face + 1)) - FUNC1(eh * v_face);

    uf = 0.5f * ewi * (uf + 1.f) - 0.5f;
    vf = 0.5f * ehi * (vf + 1.f) - 0.5f;

    ui = FUNC2(uf);
    vi = FUNC2(vf);

    *du = uf - ui;
    *dv = vf - vi;

    for (int i = -1; i < 3; i++) {
        for (int j = -1; j < 3; j++) {
            int new_ui = ui + j;
            int new_vi = vi + i;
            int u_shift, v_shift;
            int new_ewi, new_ehi;

            if (new_ui >= 0 && new_ui < ewi && new_vi >= 0 && new_vi < ehi) {
                face = s->in_cubemap_face_order[direction];

                u_face = face % 3;
                v_face = face / 3;
                u_shift = FUNC1(ew * u_face);
                v_shift = FUNC1(eh * v_face);
            } else {
                uf = 2.f * new_ui / ewi - 1.f;
                vf = 2.f * new_vi / ehi - 1.f;

                uf /= scalew;
                vf /= scaleh;

                FUNC3(s, uf, vf, direction, &uf, &vf, &face);

                uf *= scalew;
                vf *= scaleh;

                u_face = face % 3;
                v_face = face / 3;
                u_shift = FUNC1(ew * u_face);
                v_shift = FUNC1(eh * v_face);
                new_ewi = FUNC1(ew * (u_face + 1)) - u_shift;
                new_ehi = FUNC1(eh * (v_face + 1)) - v_shift;

                new_ui = FUNC0(FUNC4(0.5f * new_ewi * (uf + 1.f)), 0, new_ewi - 1);
                new_vi = FUNC0(FUNC4(0.5f * new_ehi * (vf + 1.f)), 0, new_ehi - 1);
            }

            us[i + 1][j + 1] = u_shift + new_ui;
            vs[i + 1][j + 1] = v_shift + new_vi;
        }
    }
}