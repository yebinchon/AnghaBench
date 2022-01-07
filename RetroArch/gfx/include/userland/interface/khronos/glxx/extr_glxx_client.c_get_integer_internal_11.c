
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int pack; int unpack; } ;
struct TYPE_8__ {size_t client; } ;
struct TYPE_9__ {int element_array; int array; } ;
struct TYPE_11__ {TYPE_1__ alignment; TYPE_4__* attrib; TYPE_2__ active_texture; TYPE_3__ bound_buffer; } ;
struct TYPE_10__ {int buffer; int stride; int type; int size; } ;
typedef int GLint ;
typedef int GLenum ;
typedef TYPE_5__ GLXX_CLIENT_STATE_T ;
typedef int CLIENT_THREAD_STATE_T ;


 size_t GL11_IX_COLOR ;
 size_t GL11_IX_MATRIX_INDEX ;
 size_t GL11_IX_MATRIX_WEIGHT ;
 size_t GL11_IX_NORMAL ;
 size_t GL11_IX_POINT_SIZE ;
 size_t GL11_IX_TEXTURE_COORD ;
 size_t GL11_IX_VERTEX ;
 TYPE_5__* GLXX_GET_CLIENT_STATE (int *) ;
 int GL_RGBA ;
 size_t GL_TEXTURE0 ;





 int GL_UNSIGNED_BYTE ;
 int UNREACHABLE () ;
 int vcos_assert (int ) ;

__attribute__((used)) static int get_integer_internal_11(CLIENT_THREAD_STATE_T *thread, GLenum pname, GLint *params)
{
   GLXX_CLIENT_STATE_T *state = GLXX_GET_CLIENT_STATE(thread);

   vcos_assert(state != ((void*)0));

   switch (pname) {
   case 159:
      params[0] = (GLint) state->active_texture.client;
      return 1;
   case 134:
      params[0] = (GLint) state->attrib[GL11_IX_VERTEX].size;
      return 1;
   case 132:
      params[0] = (GLint) state->attrib[GL11_IX_VERTEX].type;
      return 1;
   case 133:
      params[0] = (GLint) state->attrib[GL11_IX_VERTEX].stride;
      return 1;
   case 145:
      params[0] = (GLint) state->attrib[GL11_IX_NORMAL].type;
      return 1;
   case 146:
      params[0] = (GLint) state->attrib[GL11_IX_NORMAL].stride;
      return 1;
   case 157:
      params[0] = (GLint) state->attrib[GL11_IX_COLOR].size;
      return 1;
   case 155:
      params[0] = (GLint) state->attrib[GL11_IX_COLOR].type;
      return 1;
   case 156:
      params[0] = (GLint) state->attrib[GL11_IX_COLOR].stride;
      return 1;
   case 139:
      params[0] = (GLint) state->attrib[state->active_texture.client - GL_TEXTURE0 + GL11_IX_TEXTURE_COORD].size;
      return 1;
   case 137:
      params[0] = (GLint) state->attrib[state->active_texture.client - GL_TEXTURE0 + GL11_IX_TEXTURE_COORD].type;
      return 1;
   case 138:
      params[0] = (GLint) state->attrib[state->active_texture.client - GL_TEXTURE0 + GL11_IX_TEXTURE_COORD].stride;
      return 1;
   case 141:
      params[0] = (GLint) state->attrib[GL11_IX_POINT_SIZE].type;
      return 1;
   case 142:
      params[0] = (GLint) state->attrib[GL11_IX_POINT_SIZE].stride;
      return 1;
   case 150:
      params[0] = (GLint) state->attrib[GL11_IX_MATRIX_INDEX].size;
      return 1;
   case 148:
      params[0] = (GLint) state->attrib[GL11_IX_MATRIX_INDEX].type;
      return 1;
   case 149:
      params[0] = (GLint) state->attrib[GL11_IX_MATRIX_INDEX].stride;
      return 1;
   case 130:
      params[0] = (GLint) state->attrib[GL11_IX_MATRIX_WEIGHT].size;
      return 1;
   case 128:
      params[0] = (GLint) state->attrib[GL11_IX_MATRIX_WEIGHT].type;
      return 1;
   case 129:
      params[0] = (GLint) state->attrib[GL11_IX_MATRIX_WEIGHT].stride;
      return 1;
   case 160:
      params[0] = (GLint) state->bound_buffer.array;
      return 1;
   case 154:
      params[0] = (GLint) state->bound_buffer.element_array;
      return 1;
   case 135:
      params[0] = (GLint) state->attrib[GL11_IX_VERTEX].buffer;
      return 1;
   case 147:
      params[0] = (GLint) state->attrib[GL11_IX_NORMAL].buffer;
      return 1;
   case 158:
      params[0] = (GLint) state->attrib[GL11_IX_COLOR].buffer;
      return 1;
   case 140:
      params[0] = (GLint) state->attrib[state->active_texture.client - GL_TEXTURE0 + GL11_IX_TEXTURE_COORD].buffer;
      return 1;
   case 143:
      params[0] = (GLint) state->attrib[GL11_IX_POINT_SIZE].buffer;
      return 1;
   case 151:
      params[0] = (GLint) state->attrib[GL11_IX_MATRIX_INDEX].buffer;
      return 1;
   case 131:
      params[0] = (GLint) state->attrib[GL11_IX_MATRIX_WEIGHT].buffer;
      return 1;

   case 136:
      params[0] = (GLint) state->alignment.unpack;
      return 1;
   case 144:
      params[0] = (GLint) state->alignment.pack;
      return 1;



   case 152:
      params[0] = (GLint) GL_UNSIGNED_BYTE;
      return 1;
   case 153:
      params[0] = (GLint) GL_RGBA;
      return 1;


   default:
      UNREACHABLE();
      break;
   }

   return 0;
}
