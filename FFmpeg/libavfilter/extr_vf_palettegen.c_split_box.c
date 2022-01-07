
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct range_box {int start; int len; int variance; void* color; int sorted_by; } ;
struct TYPE_3__ {int refs; int nb_boxes; struct range_box* boxes; } ;
typedef TYPE_1__ PaletteGenContext ;


 int av_assert0 (int) ;
 void* get_avg_color (int ,struct range_box*) ;

__attribute__((used)) static void split_box(PaletteGenContext *s, struct range_box *box, int n)
{
    struct range_box *new_box = &s->boxes[s->nb_boxes++];
    new_box->start = n + 1;
    new_box->len = box->start + box->len - new_box->start;
    new_box->sorted_by = box->sorted_by;
    box->len -= new_box->len;

    av_assert0(box->len >= 1);
    av_assert0(new_box->len >= 1);

    box->color = get_avg_color(s->refs, box);
    new_box->color = get_avg_color(s->refs, new_box);
    box->variance = -1;
    new_box->variance = -1;
}
