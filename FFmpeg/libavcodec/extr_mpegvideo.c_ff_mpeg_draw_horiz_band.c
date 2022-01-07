
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int low_delay; int first_field; int picture_structure; TYPE_2__* last_picture_ptr; TYPE_1__* current_picture_ptr; int avctx; } ;
struct TYPE_6__ {int * f; } ;
struct TYPE_5__ {int f; } ;
typedef TYPE_3__ MpegEncContext ;


 int ff_draw_horiz_band (int ,int ,int *,int,int,int ,int ,int ) ;

void ff_mpeg_draw_horiz_band(MpegEncContext *s, int y, int h)
{
    ff_draw_horiz_band(s->avctx, s->current_picture_ptr->f,
                       s->last_picture_ptr ? s->last_picture_ptr->f : ((void*)0), y, h, s->picture_structure,
                       s->first_field, s->low_delay);
}
