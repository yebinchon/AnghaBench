
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef int int16_t ;
struct TYPE_3__ {int ** v; int ** u; } ;
typedef TYPE_1__ XYRemap ;


 int calculate_lanczos_coeffs (float,float*) ;
 int lrintf (float) ;

__attribute__((used)) static void lanczos_kernel(float du, float dv, const XYRemap *rmap,
                           uint16_t *u, uint16_t *v, int16_t *ker)
{
    float du_coeffs[4];
    float dv_coeffs[4];

    calculate_lanczos_coeffs(du, du_coeffs);
    calculate_lanczos_coeffs(dv, dv_coeffs);

    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 4; j++) {
            u[i * 4 + j] = rmap->u[i][j];
            v[i * 4 + j] = rmap->v[i][j];
            ker[i * 4 + j] = lrintf(du_coeffs[j] * dv_coeffs[i] * 16385.f);
        }
    }
}
