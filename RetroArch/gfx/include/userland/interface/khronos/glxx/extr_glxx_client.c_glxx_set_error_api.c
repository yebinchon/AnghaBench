
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int GLenum ;
typedef int GLXX_CLIENT_STATE_T ;
typedef int CLIENT_THREAD_STATE_T ;


 int * CLIENT_GET_THREAD_STATE () ;
 int * GLXX_GET_CLIENT_STATE (int *) ;
 scalar_t__ IS_OPENGLES_API (int *,int ) ;
 int glxx_set_error (int *,int ) ;

void glxx_set_error_api(uint32_t api, GLenum error)
{
   CLIENT_THREAD_STATE_T *thread = CLIENT_GET_THREAD_STATE();
   if (IS_OPENGLES_API(thread, api))
   {
      GLXX_CLIENT_STATE_T *state = GLXX_GET_CLIENT_STATE(thread);
      glxx_set_error(state, error);
   }
}
