
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int color; } ;
struct TYPE_5__ {void* start; void* end; } ;
struct TYPE_6__ {int box_flags; TYPE_1__ hclr; int text_pos; TYPE_2__ hlit; } ;
typedef TYPE_3__ MovTextContext ;


 void* AV_RB16 (int *) ;
 int HCLR_BOX ;
 int HLIT_BOX ;

__attribute__((used)) static void mov_text_color_cb(void *priv, unsigned int color, unsigned int color_id)
{
    MovTextContext *s = priv;
    if (color_id == 2) {
        if (s->box_flags & HLIT_BOX) {
            s->hlit.end = AV_RB16(&s->text_pos);
        } else {
            s->box_flags |= HCLR_BOX;
            s->box_flags |= HLIT_BOX;
            s->hlit.start = AV_RB16(&s->text_pos);
            s->hclr.color = color | (0xFF << 24);
        }
    }




}
