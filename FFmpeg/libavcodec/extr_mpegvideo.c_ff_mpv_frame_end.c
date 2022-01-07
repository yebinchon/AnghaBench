
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ reference; } ;
struct TYPE_7__ {TYPE_2__* current_picture_ptr; TYPE_1__ current_picture; } ;
struct TYPE_6__ {int tf; } ;
typedef TYPE_3__ MpegEncContext ;


 int INT_MAX ;
 int emms_c () ;
 int ff_thread_report_progress (int *,int ,int ) ;

void ff_mpv_frame_end(MpegEncContext *s)
{
    emms_c();

    if (s->current_picture.reference)
        ff_thread_report_progress(&s->current_picture_ptr->tf, INT_MAX, 0);
}
