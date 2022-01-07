
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct range_box {int len; int variance; int start; int color; } ;
struct color_ref {int count; int color; } ;
typedef int int64_t ;
struct TYPE_3__ {int nb_boxes; int max_colors; int reserve_transparent; struct color_ref** refs; struct range_box* boxes; } ;
typedef TYPE_1__ PaletteGenContext ;


 int diff (int ,int ) ;

__attribute__((used)) static int get_next_box_id_to_split(PaletteGenContext *s)
{
    int box_id, i, best_box_id = -1;
    int64_t max_variance = -1;

    if (s->nb_boxes == s->max_colors - s->reserve_transparent)
        return -1;

    for (box_id = 0; box_id < s->nb_boxes; box_id++) {
        struct range_box *box = &s->boxes[box_id];

        if (s->boxes[box_id].len >= 2) {

            if (box->variance == -1) {
                int64_t variance = 0;

                for (i = 0; i < box->len; i++) {
                    const struct color_ref *ref = s->refs[box->start + i];
                    variance += diff(ref->color, box->color) * ref->count;
                }
                box->variance = variance;
            }
            if (box->variance > max_variance) {
                best_box_id = box_id;
                max_variance = box->variance;
            }
        } else {
            box->variance = -1;
        }
    }
    return best_box_id;
}
