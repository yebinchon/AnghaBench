
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ id; } ;
struct TYPE_9__ {int buffers; } ;
typedef scalar_t__ GLuint ;
typedef int GLenum ;
typedef TYPE_1__ GLXX_CLIENT_STATE_T ;
typedef TYPE_2__ GLXX_BUFFER_INFO_T ;


 scalar_t__ get_bound_buffer (TYPE_1__*,int ) ;
 TYPE_2__* khrn_platform_malloc (int,char*) ;
 int khrn_pointer_map_insert (int *,scalar_t__,TYPE_2__*) ;
 TYPE_2__* khrn_pointer_map_lookup (int *,scalar_t__) ;

void glxx_buffer_info_set(GLXX_CLIENT_STATE_T *state, GLenum target, GLXX_BUFFER_INFO_T* buffer_info)
{
   GLuint buffer = get_bound_buffer(state, target);

   if(buffer != 0)
   {
      GLXX_BUFFER_INFO_T *stored = khrn_pointer_map_lookup(&state->buffers, buffer);
      if(!stored)
      {
         stored = khrn_platform_malloc(sizeof(GLXX_BUFFER_INFO_T), "GLXX_BUFFER_INFO_T");
         khrn_pointer_map_insert(&state->buffers, buffer, stored);
      }
      buffer_info->id = buffer;

      *stored = *buffer_info;
   }
}
