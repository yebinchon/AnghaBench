
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ref_count; int mutex; int objects; } ;
typedef TYPE_1__ VG_CLIENT_SHARED_STATE_T ;


 int khrn_platform_free (TYPE_1__*) ;
 int khrn_pointer_map_iterate (int *,int ,int *) ;
 int khrn_pointer_map_term (int *) ;
 int object_free_callback ;
 int platform_mutex_destroy (int *) ;
 int vcos_assert (int) ;

void vg_client_shared_state_free(VG_CLIENT_SHARED_STATE_T *shared_state)
{
   vcos_assert(shared_state->ref_count == 0);
   khrn_pointer_map_iterate(&shared_state->objects, object_free_callback, ((void*)0));
   khrn_pointer_map_term(&shared_state->objects);
   platform_mutex_destroy(&shared_state->mutex);
   khrn_platform_free(shared_state);
}
