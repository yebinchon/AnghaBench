
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ id; } ;
struct TYPE_8__ {int buffers; } ;
typedef scalar_t__ GLuint ;
typedef int GLenum ;
typedef TYPE_1__ GLXX_CLIENT_STATE_T ;
typedef TYPE_2__ GLXX_BUFFER_INFO_T ;


 scalar_t__ get_bound_buffer (TYPE_1__*,int ) ;
 TYPE_2__* khrn_pointer_map_lookup (int *,scalar_t__) ;
 int memset (TYPE_2__*,int ,int) ;

void glxx_buffer_info_get(GLXX_CLIENT_STATE_T *state, GLenum target, GLXX_BUFFER_INFO_T* buffer_info)
{
   GLuint buffer = get_bound_buffer(state, target);

   memset(buffer_info,0,sizeof(GLXX_BUFFER_INFO_T));

   buffer_info->id = 0;

   if(buffer != 0)
   {
      GLXX_BUFFER_INFO_T *stored = khrn_pointer_map_lookup(&state->buffers, buffer);
      if(stored)
         *buffer_info = *stored;
   }
}
