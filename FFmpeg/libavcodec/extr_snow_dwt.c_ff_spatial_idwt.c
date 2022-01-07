
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IDWTELEM ;
typedef int DWTCompose ;


 int MAX_DECOMPOSITIONS ;
 int spatial_idwt_init (int *,int *,int,int,int,int,int) ;
 int spatial_idwt_slice (int *,int *,int *,int,int,int,int,int,int) ;

void ff_spatial_idwt(IDWTELEM *buffer, IDWTELEM *temp, int width, int height,
                     int stride, int type, int decomposition_count)
{
    DWTCompose cs[MAX_DECOMPOSITIONS];
    int y;
    spatial_idwt_init(cs, buffer, width, height, stride, type,
                         decomposition_count);
    for (y = 0; y < height; y += 4)
        spatial_idwt_slice(cs, buffer, temp, width, height, stride, type,
                              decomposition_count, y);
}
