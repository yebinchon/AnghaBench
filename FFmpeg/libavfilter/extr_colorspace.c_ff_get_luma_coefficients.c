
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct LumaCoefficients {int cr; } ;
typedef enum AVColorSpace { ____Placeholder_AVColorSpace } AVColorSpace ;


 int AVCOL_SPC_NB ;
 struct LumaCoefficients* luma_coefficients ;

const struct LumaCoefficients *ff_get_luma_coefficients(enum AVColorSpace csp)
{
    const struct LumaCoefficients *coeffs;

    if (csp >= AVCOL_SPC_NB)
        return ((void*)0);
    coeffs = &luma_coefficients[csp];
    if (!coeffs->cr)
        return ((void*)0);

    return coeffs;
}
