
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buffers; } ;
typedef int GLuint ;
typedef TYPE_1__ GLXX_CLIENT_STATE_T ;
typedef int GLXX_BUFFER_INFO_T ;


 int khrn_platform_free (int *) ;
 int khrn_pointer_map_delete (int *,int ) ;
 int * khrn_pointer_map_lookup (int *,int ) ;

__attribute__((used)) static void buffer_info_delete(GLXX_CLIENT_STATE_T *state, GLuint buffer)
{
   GLXX_BUFFER_INFO_T *stored = khrn_pointer_map_lookup(&state->buffers, buffer);
   if(stored)
   {
      khrn_platform_free(stored);
      khrn_pointer_map_delete(&state->buffers,buffer);
   }
}
