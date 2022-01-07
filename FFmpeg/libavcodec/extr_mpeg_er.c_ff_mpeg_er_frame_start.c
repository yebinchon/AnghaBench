
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int partitioned_frame; int quarter_sample; int pb_time; int pp_time; int last_pic; int next_pic; int cur_pic; } ;
struct TYPE_5__ {int partitioned_frame; int quarter_sample; int pb_time; int pp_time; int last_picture_ptr; int next_picture_ptr; int current_picture_ptr; TYPE_2__ er; } ;
typedef TYPE_1__ MpegEncContext ;
typedef TYPE_2__ ERContext ;


 int ff_er_frame_start (TYPE_2__*) ;
 int set_erpic (int *,int ) ;

void ff_mpeg_er_frame_start(MpegEncContext *s)
{
    ERContext *er = &s->er;

    set_erpic(&er->cur_pic, s->current_picture_ptr);
    set_erpic(&er->next_pic, s->next_picture_ptr);
    set_erpic(&er->last_pic, s->last_picture_ptr);

    er->pp_time = s->pp_time;
    er->pb_time = s->pb_time;
    er->quarter_sample = s->quarter_sample;
    er->partitioned_frame = s->partitioned_frame;

    ff_er_frame_start(er);
}
