
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef int dwtcoef ;
typedef int VC2TransformContext ;


 int dwt_haar (int *,int *,int ,int,int,int) ;

__attribute__((used)) static void vc2_subband_dwt_haar_shift(VC2TransformContext *t, dwtcoef *data,
                                       ptrdiff_t stride, int width, int height)
{
    dwt_haar(t, data, stride, width, height, 1);
}
