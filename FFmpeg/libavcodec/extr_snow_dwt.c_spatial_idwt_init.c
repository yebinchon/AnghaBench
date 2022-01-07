
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IDWTELEM ;
typedef int DWTCompose ;




 int spatial_compose53i_init (int *,int *,int,int) ;
 int spatial_compose97i_init (int *,int *,int,int) ;

__attribute__((used)) static void spatial_idwt_init(DWTCompose *cs, IDWTELEM *buffer, int width,
                                 int height, int stride, int type,
                                 int decomposition_count)
{
    int level;
    for (level = decomposition_count - 1; level >= 0; level--) {
        switch (type) {
        case 128:
            spatial_compose97i_init(cs + level, buffer, height >> level,
                                    stride << level);
            break;
        case 129:
            spatial_compose53i_init(cs + level, buffer, height >> level,
                                    stride << level);
            break;
        }
    }
}
