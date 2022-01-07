
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int slice_buffer ;
typedef int DWTCompose ;




 int spatial_compose53i_buffered_init (int *,int *,int,int) ;
 int spatial_compose97i_buffered_init (int *,int *,int,int) ;

void ff_spatial_idwt_buffered_init(DWTCompose *cs, slice_buffer *sb, int width,
                                   int height, int stride_line, int type,
                                   int decomposition_count)
{
    int level;
    for (level = decomposition_count - 1; level >= 0; level--) {
        switch (type) {
        case 128:
            spatial_compose97i_buffered_init(cs + level, sb, height >> level,
                                             stride_line << level);
            break;
        case 129:
            spatial_compose53i_buffered_init(cs + level, sb, height >> level,
                                             stride_line << level);
            break;
        }
    }
}
