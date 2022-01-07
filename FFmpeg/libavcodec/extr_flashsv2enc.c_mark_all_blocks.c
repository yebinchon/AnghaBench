
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int image_height; int cols; int block_height; int block_width; int image_width; int tot_lines; scalar_t__ key_frame; scalar_t__ current_frame; int * frame_blocks; } ;
typedef TYPE_1__ FlashSV2Context ;
typedef int Block ;


 int compare_sl (TYPE_1__*,int *,int const*,scalar_t__,scalar_t__,int,int) ;

__attribute__((used)) static int mark_all_blocks(FlashSV2Context * s, const uint8_t * src, int stride,
                           int keyframe)
{
    int sl, rsl, col, pos, possl;
    Block *b;
    for (sl = s->image_height - 1; sl >= 0; sl--) {
        for (col = 0; col < s->cols; col++) {
            rsl = s->image_height - sl - 1;
            b = s->frame_blocks + col + rsl / s->block_height * s->cols;
            possl = stride * sl + col * s->block_width * 3;
            pos = s->image_width * rsl * 3 + col * s->block_width * 3;
            compare_sl(s, b, src + possl, s->current_frame + pos,
                       s->key_frame + pos, rsl % s->block_height, keyframe);
        }
    }

    s->tot_lines += s->image_height * s->cols;

    return 0;
}
