
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref_count; scalar_t__ stems_count; int mutex; int objects; } ;
typedef TYPE_1__ VG_CLIENT_SHARED_STATE_T ;
typedef scalar_t__ KHR_STATUS_T ;


 scalar_t__ KHR_SUCCESS ;
 int khrn_platform_free (TYPE_1__*) ;
 scalar_t__ khrn_platform_malloc (int,char*) ;
 int khrn_pointer_map_init (int *,int) ;
 scalar_t__ platform_mutex_create (int *) ;
 int platform_mutex_destroy (int *) ;

VG_CLIENT_SHARED_STATE_T *vg_client_shared_state_alloc(void)
{
   VG_CLIENT_SHARED_STATE_T *shared_state;
   KHR_STATUS_T status;

   shared_state = (VG_CLIENT_SHARED_STATE_T *)khrn_platform_malloc(sizeof(VG_CLIENT_SHARED_STATE_T), "VG_CLIENT_SHARED_STATE_T");
   if (!shared_state) {
      return ((void*)0);
   }

   status = platform_mutex_create(&shared_state->mutex);
   if (status != KHR_SUCCESS) {
      khrn_platform_free(shared_state);
      return ((void*)0);
   }

   if (!khrn_pointer_map_init(&shared_state->objects, 128)) {
      platform_mutex_destroy(&shared_state->mutex);
      khrn_platform_free(shared_state);
      return ((void*)0);
   }

   shared_state->ref_count = 1;
   shared_state->stems_count = 0;

   return shared_state;
}
