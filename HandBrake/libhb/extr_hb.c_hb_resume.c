
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int paused; } ;
struct TYPE_8__ {TYPE_1__ working; } ;
struct TYPE_9__ {TYPE_2__ param; } ;
struct TYPE_11__ {int pause_date; scalar_t__ paused; int pause_lock; int pause_duration; TYPE_3__ state; TYPE_4__* current_job; } ;
typedef TYPE_5__ hb_handle_t ;
struct TYPE_10__ {int st_paused; } ;


 int hb_get_date () ;
 int hb_unlock (int ) ;

void hb_resume( hb_handle_t * h )
{
    if( h->paused )
    {
        if (h->pause_date != -1)
        {

            h->pause_duration += hb_get_date() - h->pause_date;



            h->current_job->st_paused += hb_get_date() - h->pause_date;
            h->pause_date = -1;
            h->state.param.working.paused = h->pause_duration;
        }

        hb_unlock( h->pause_lock );
        h->paused = 0;
    }
}
