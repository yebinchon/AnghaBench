
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pack; int unpack; } ;
struct TYPE_5__ {TYPE_1__ alignment; } ;
typedef int GLint ;
typedef int GLenum ;
typedef TYPE_2__ GLXX_CLIENT_STATE_T ;
typedef int CLIENT_THREAD_STATE_T ;


 TYPE_2__* GLXX_GET_CLIENT_STATE (int *) ;


 int UNREACHABLE () ;
 int vcos_assert (int ) ;

__attribute__((used)) static int get_integer_internal_20(CLIENT_THREAD_STATE_T *thread, GLenum pname, GLint *params)
{
   GLXX_CLIENT_STATE_T *state = GLXX_GET_CLIENT_STATE(thread);

   vcos_assert(state != ((void*)0));

   switch (pname) {
   case 128:
      params[0] = state->alignment.unpack;
      return 1;
   case 129:
      params[0] = state->alignment.pack;
      return 1;
   default:
      UNREACHABLE();
      break;
   }

   return 0;
}
