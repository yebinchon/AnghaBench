
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int error_occurred; } ;
struct TYPE_7__ {scalar_t__ pict_type; int mb_y; TYPE_2__* current_picture_ptr; TYPE_1__ er; int partitioned_frame; } ;
struct TYPE_6__ {int tf; } ;
typedef TYPE_3__ MpegEncContext ;


 scalar_t__ AV_PICTURE_TYPE_B ;
 int ff_thread_report_progress (int *,int ,int ) ;

void ff_mpv_report_decode_progress(MpegEncContext *s)
{
    if (s->pict_type != AV_PICTURE_TYPE_B && !s->partitioned_frame && !s->er.error_occurred)
        ff_thread_report_progress(&s->current_picture_ptr->tf, s->mb_y, 0);
}
