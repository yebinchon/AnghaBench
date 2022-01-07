
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int slice_buffer ;
struct TYPE_5__ {scalar_t__ y; } ;
typedef int SnowDWTContext ;
typedef int IDWTELEM ;
typedef TYPE_1__ DWTCompose ;




 scalar_t__ FFMIN (int,int) ;
 int spatial_compose53i_dy_buffered (TYPE_1__*,int *,int *,int,int,int) ;
 int spatial_compose97i_dy_buffered (int *,TYPE_1__*,int *,int *,int,int,int) ;

void ff_spatial_idwt_buffered_slice(SnowDWTContext *dsp, DWTCompose *cs,
                                    slice_buffer *slice_buf, IDWTELEM *temp,
                                    int width, int height, int stride_line,
                                    int type, int decomposition_count, int y)
{
    const int support = type == 1 ? 3 : 5;
    int level;
    if (type == 2)
        return;

    for (level = decomposition_count - 1; level >= 0; level--)
        while (cs[level].y <= FFMIN((y >> level) + support, height >> level)) {
            switch (type) {
            case 128:
                spatial_compose97i_dy_buffered(dsp, cs + level, slice_buf, temp,
                                               width >> level,
                                               height >> level,
                                               stride_line << level);
                break;
            case 129:
                spatial_compose53i_dy_buffered(cs + level, slice_buf, temp,
                                               width >> level,
                                               height >> level,
                                               stride_line << level);
                break;
            }
        }
}
