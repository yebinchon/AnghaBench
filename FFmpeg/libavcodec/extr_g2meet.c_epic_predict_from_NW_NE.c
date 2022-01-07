
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int const uint32_t ;
struct TYPE_5__ {int * ne_pred_rung; int * nw_pred_rung; } ;
typedef TYPE_1__ ePICContext ;


 scalar_t__ epic_predict_pixel2 (TYPE_1__*,int *,int const*,int const) ;
 int is_pixel_on_stack (TYPE_1__*,int const) ;

__attribute__((used)) static int epic_predict_from_NW_NE(ePICContext *dc, int x, int y, int run,
                                   int tile_width, const uint32_t *curr_row,
                                   const uint32_t *above_row, uint32_t *pPix)
{
    int pos;


    if (x && y) {
        uint32_t NW = above_row[x - 1];
        if (NW != curr_row[x - 1] && NW != above_row[x] && !is_pixel_on_stack(dc, NW)) {
            if (epic_predict_pixel2(dc, &dc->nw_pred_rung[NW & 0xFF], pPix, NW))
                return 1;
        }
    }


    pos = x + run - 1;
    if (pos < tile_width - 1 && y) {
        uint32_t NE = above_row[pos + 1];
        if (NE != above_row[pos] && !is_pixel_on_stack(dc, NE)) {
            if (epic_predict_pixel2(dc, &dc->ne_pred_rung[NE & 0xFF], pPix, NE))
                return 1;
        }
    }

    return 0;
}
