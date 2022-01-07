
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int hb_state_t ;
struct TYPE_2__ {int live; int queue; int scan; } ;


 int * h_live ;
 int * h_queue ;
 int * h_scan ;
 int hb_get_state (int *,int *) ;
 TYPE_1__ hb_status ;
 int update_status (int *,int *) ;

void
ghb_track_status()
{
    hb_state_t state;

    if (h_scan == ((void*)0)) return;
    hb_get_state( h_scan, &state );
    update_status(&state, &hb_status.scan);
    hb_get_state( h_queue, &state );
    update_status(&state, &hb_status.queue);
    hb_get_state( h_live, &state );
    update_status(&state, &hb_status.live);
}
