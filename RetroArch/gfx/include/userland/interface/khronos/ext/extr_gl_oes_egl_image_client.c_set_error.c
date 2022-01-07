
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ error; } ;
typedef scalar_t__ GLenum ;
typedef TYPE_1__ GLXX_CLIENT_STATE_T ;


 scalar_t__ GL_NO_ERROR ;

__attribute__((used)) static void set_error(GLXX_CLIENT_STATE_T *state, GLenum error)
{
   if (state->error == GL_NO_ERROR)
      state->error = error;
}
