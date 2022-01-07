
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t client; } ;
struct TYPE_7__ {TYPE_2__* attrib; TYPE_1__ active_texture; } ;
struct TYPE_6__ {int enabled; } ;
typedef int GLenum ;
typedef int GLboolean ;
typedef TYPE_3__ GLXX_CLIENT_STATE_T ;
typedef int CLIENT_THREAD_STATE_T ;


 size_t GL11_IX_COLOR ;
 size_t GL11_IX_MATRIX_INDEX ;
 size_t GL11_IX_MATRIX_WEIGHT ;
 size_t GL11_IX_NORMAL ;
 size_t GL11_IX_POINT_SIZE ;
 size_t GL11_IX_TEXTURE_COORD ;
 size_t GL11_IX_VERTEX ;
 TYPE_3__* GLXX_GET_CLIENT_STATE (int *) ;




 size_t GL_TEXTURE0 ;



 int UNREACHABLE () ;
 int vcos_assert (int ) ;

__attribute__((used)) static int get_boolean_internal_11(CLIENT_THREAD_STATE_T *thread, GLenum pname, GLboolean *params)
{
   GLXX_CLIENT_STATE_T *state = GLXX_GET_CLIENT_STATE(thread);

   vcos_assert(state != ((void*)0));

   switch (pname) {
   case 129:
      params[0] = state->attrib[GL11_IX_VERTEX].enabled;
      return 1;
   case 132:
      params[0] = state->attrib[GL11_IX_NORMAL].enabled;
      return 1;
   case 134:
      params[0] = state->attrib[GL11_IX_COLOR].enabled;
      return 1;
   case 130:
      params[0] = state->attrib[state->active_texture.client - GL_TEXTURE0 + GL11_IX_TEXTURE_COORD].enabled;
      return 1;
   case 131:
      params[0] = state->attrib[GL11_IX_POINT_SIZE].enabled;
      return 1;
   case 133:
      params[0] = state->attrib[GL11_IX_MATRIX_INDEX].enabled;
      return 1;
   case 128:
      params[0] = state->attrib[GL11_IX_MATRIX_WEIGHT].enabled;
      return 1;
   default:
      UNREACHABLE();
      break;
   }

   return 0;
}
