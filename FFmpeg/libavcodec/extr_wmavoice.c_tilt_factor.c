
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float const avpriv_scalarproduct_float_c (float const*,float const*,int) ;

__attribute__((used)) static float tilt_factor(const float *lpcs, int n_lpcs)
{
    float rh0, rh1;

    rh0 = 1.0 + avpriv_scalarproduct_float_c(lpcs, lpcs, n_lpcs);
    rh1 = lpcs[0] + avpriv_scalarproduct_float_c(lpcs, &lpcs[1], n_lpcs - 1);

    return rh1 / rh0;
}
