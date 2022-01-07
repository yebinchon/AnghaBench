
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hb_state_t ;
struct TYPE_3__ {int state_lock; int state; } ;
typedef TYPE_1__ hb_handle_t ;


 int hb_lock (int ) ;
 int hb_unlock (int ) ;
 int memcpy (int *,int *,int) ;

void hb_get_state2( hb_handle_t * h, hb_state_t * s )
{
    hb_lock( h->state_lock );

    memcpy( s, &h->state, sizeof( hb_state_t ) );

    hb_unlock( h->state_lock );
}
