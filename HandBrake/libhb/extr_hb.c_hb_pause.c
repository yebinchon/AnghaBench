
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; } ;
struct TYPE_5__ {int paused; int state_lock; TYPE_1__ state; int pause_date; int pause_lock; } ;
typedef TYPE_2__ hb_handle_t ;


 int HB_STATE_PAUSED ;
 int hb_get_date () ;
 int hb_lock (int ) ;
 int hb_unlock (int ) ;

void hb_pause( hb_handle_t * h )
{
    if( !h->paused )
    {
        hb_lock( h->pause_lock );
        h->paused = 1;

        h->pause_date = hb_get_date();

        hb_lock( h->state_lock );
        h->state.state = HB_STATE_PAUSED;
        hb_unlock( h->state_lock );
    }
}
