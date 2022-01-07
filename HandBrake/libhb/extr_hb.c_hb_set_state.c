
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int hb_state_t ;
struct TYPE_7__ {scalar_t__ state; int sequence_id; } ;
struct TYPE_6__ {int pause_lock; int state_lock; TYPE_1__* current_job; TYPE_3__ state; } ;
typedef TYPE_2__ hb_handle_t ;
struct TYPE_5__ {int sequence_id; } ;


 scalar_t__ HB_STATE_SEARCHING ;
 scalar_t__ HB_STATE_WORKING ;
 int hb_lock (int ) ;
 int hb_unlock (int ) ;
 int memcpy (TYPE_3__*,int *,int) ;

void hb_set_state( hb_handle_t * h, hb_state_t * s )
{
    hb_lock( h->pause_lock );
    hb_lock( h->state_lock );
    memcpy( &h->state, s, sizeof( hb_state_t ) );
    if( h->state.state == HB_STATE_WORKING ||
        h->state.state == HB_STATE_SEARCHING )
    {

        if (h->current_job)
            h->state.sequence_id = h->current_job->sequence_id;
    }
    hb_unlock( h->state_lock );
    hb_unlock( h->pause_lock );
}
