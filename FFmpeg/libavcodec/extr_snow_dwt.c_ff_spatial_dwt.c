
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWTELEM ;




 int spatial_decompose53i (int *,int *,int,int,int) ;
 int spatial_decompose97i (int *,int *,int,int,int) ;

void ff_spatial_dwt(DWTELEM *buffer, DWTELEM *temp, int width, int height,
                    int stride, int type, int decomposition_count)
{
    int level;

    for (level = 0; level < decomposition_count; level++) {
        switch (type) {
        case 128:
            spatial_decompose97i(buffer, temp,
                                 width >> level, height >> level,
                                 stride << level);
            break;
        case 129:
            spatial_decompose53i(buffer, temp,
                                 width >> level, height >> level,
                                 stride << level);
            break;
        }
    }
}
