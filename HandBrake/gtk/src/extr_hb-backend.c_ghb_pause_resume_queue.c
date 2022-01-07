
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; } ;
typedef TYPE_1__ hb_state_t ;


 scalar_t__ HB_STATE_PAUSED ;
 int ghb_pause_queue () ;
 int ghb_resume_queue () ;
 int h_queue ;
 int hb_get_state2 (int ,TYPE_1__*) ;

void
ghb_pause_resume_queue()
{
    hb_state_t s;
    hb_get_state2( h_queue, &s );

    if( s.state == HB_STATE_PAUSED )
    {
        ghb_resume_queue();
    }
    else
    {
        ghb_pause_queue();
    }
}
