
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int shared_state; } ;
typedef TYPE_1__ VG_CLIENT_STATE_T ;


 int khrn_platform_free (TYPE_1__*) ;
 int vg_client_shared_state_release (int ) ;

void vg_client_state_free(VG_CLIENT_STATE_T *state)
{
   vg_client_shared_state_release(state->shared_state);
   khrn_platform_free(state);
}
