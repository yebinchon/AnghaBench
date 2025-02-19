
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {float* input_mirror_modifier; } ;
typedef TYPE_1__ V360Context ;


 float const M_PI ;
 float const M_PI_2 ;
 float asinf (float const) ;
 float atan2f (float const,float const) ;
 int av_clip (int,int ,int) ;
 float cosf (float const) ;
 int floorf (float) ;

__attribute__((used)) static void xyz_to_sinusoidal(const V360Context *s,
                              const float *vec, int width, int height,
                              uint16_t us[4][4], uint16_t vs[4][4], float *du, float *dv)
{
    const float theta = asinf(-vec[1]) * s->input_mirror_modifier[1];
    const float phi = atan2f(vec[0], -vec[2]) * s->input_mirror_modifier[0] * cosf(theta);
    float uf, vf;
    int ui, vi;

    uf = (phi / M_PI + 1.f) * width / 2.f;
    vf = (theta / M_PI_2 + 1.f) * height / 2.f;
    ui = floorf(uf);
    vi = floorf(vf);

    *du = uf - ui;
    *dv = vf - vi;

    for (int i = -1; i < 3; i++) {
        for (int j = -1; j < 3; j++) {
            us[i + 1][j + 1] = av_clip(ui + j, 0, width - 1);
            vs[i + 1][j + 1] = av_clip(vi + i, 0, height - 1);
        }
    }
}
