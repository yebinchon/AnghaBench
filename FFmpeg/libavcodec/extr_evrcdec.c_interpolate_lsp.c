
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILTER_ORDER ;
 int ff_weighted_vector_sumf (float*,float const*,float const*,double,float const,int ) ;

__attribute__((used)) static void interpolate_lsp(float *ilsp, const float *lsp,
                            const float *prev, int index)
{
    static const float lsp_interpolation_factors[] = { 0.1667, 0.5, 0.8333 };
    ff_weighted_vector_sumf(ilsp, prev, lsp,
                            1.0 - lsp_interpolation_factors[index],
                            lsp_interpolation_factors[index], FILTER_ORDER);
}
