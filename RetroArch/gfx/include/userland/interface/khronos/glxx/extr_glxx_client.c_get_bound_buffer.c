
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int element_array; int array; } ;
struct TYPE_5__ {TYPE_1__ bound_buffer; } ;
typedef int GLuint ;
typedef int GLenum ;
typedef TYPE_2__ GLXX_CLIENT_STATE_T ;





__attribute__((used)) static GLuint get_bound_buffer(GLXX_CLIENT_STATE_T *state, GLenum target)
{
   GLuint buffer = 0;

   switch (target) {
   case 129:
      buffer = state->bound_buffer.array;
      break;
   case 128:
      buffer = state->bound_buffer.element_array;
      break;
   default:
      break;
   }
   return buffer;
}
