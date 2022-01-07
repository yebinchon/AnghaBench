
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int*** mv_cache; } ;
typedef TYPE_1__ H264SliceContext ;


 int FFMAX (int ,int) ;
 int av_assert2 (int) ;
 size_t* scan8 ;

__attribute__((used)) static inline int get_lowest_part_list_y(H264SliceContext *sl,
                                         int n, int height, int y_offset, int list)
{
    int raw_my = sl->mv_cache[list][scan8[n]][1];
    int filter_height_down = (raw_my & 3) ? 3 : 0;
    int full_my = (raw_my >> 2) + y_offset;
    int bottom = full_my + filter_height_down + height;

    av_assert2(height >= 0);

    return FFMAX(0, bottom);
}
