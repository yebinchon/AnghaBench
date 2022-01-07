
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ y; } ;
typedef int IDWTELEM ;
typedef TYPE_1__ DWTCompose ;




 scalar_t__ FFMIN (int,int) ;
 int spatial_compose53i_dy (TYPE_1__*,int *,int *,int,int,int) ;
 int spatial_compose97i_dy (TYPE_1__*,int *,int *,int,int,int) ;

__attribute__((used)) static void spatial_idwt_slice(DWTCompose *cs, IDWTELEM *buffer,
                                  IDWTELEM *temp, int width, int height,
                                  int stride, int type,
                                  int decomposition_count, int y)
{
    const int support = type == 1 ? 3 : 5;
    int level;
    if (type == 2)
        return;

    for (level = decomposition_count - 1; level >= 0; level--)
        while (cs[level].y <= FFMIN((y >> level) + support, height >> level)) {
            switch (type) {
            case 128:
                spatial_compose97i_dy(cs + level, buffer, temp, width >> level,
                                      height >> level, stride << level);
                break;
            case 129:
                spatial_compose53i_dy(cs + level, buffer, temp, width >> level,
                                      height >> level, stride << level);
                break;
            }
        }
}
