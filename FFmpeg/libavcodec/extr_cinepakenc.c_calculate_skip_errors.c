
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int strip_info ;
struct TYPE_7__ {int w; TYPE_1__* mb; } ;
struct TYPE_6__ {int skip_error; } ;
typedef TYPE_2__ CinepakEncContext ;


 scalar_t__ MB_SIZE ;
 int compute_mb_distortion (TYPE_2__*,int **,int*,int **,int*) ;
 int get_sub_picture (TYPE_2__*,int,int,int **,int*,int **,int*) ;

__attribute__((used)) static void calculate_skip_errors(CinepakEncContext *s, int h,
                                  uint8_t *last_data[4], int last_linesize[4],
                                  uint8_t *data[4], int linesize[4],
                                  strip_info *info)
{
    int x, y, i;
    uint8_t *sub_last_data [4], *sub_pict_data [4];
    int sub_last_linesize[4], sub_pict_linesize[4];

    for (i = y = 0; y < h; y += MB_SIZE)
        for (x = 0; x < s->w; x += MB_SIZE, i++) {
            get_sub_picture(s, x, y, last_data, last_linesize,
                            sub_last_data, sub_last_linesize);
            get_sub_picture(s, x, y, data, linesize,
                            sub_pict_data, sub_pict_linesize);

            s->mb[i].skip_error =
                compute_mb_distortion(s,
                                      sub_last_data, sub_last_linesize,
                                      sub_pict_data, sub_pict_linesize);
        }
}
