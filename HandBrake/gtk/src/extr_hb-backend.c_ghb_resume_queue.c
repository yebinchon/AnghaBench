
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; } ;
struct TYPE_4__ {TYPE_1__ queue; } ;


 int GHB_STATE_PAUSED ;
 int h_queue ;
 int hb_resume (int ) ;
 TYPE_2__ hb_status ;

void
ghb_resume_queue()
{
    hb_status.queue.state &= ~GHB_STATE_PAUSED;
    hb_resume( h_queue );
}
