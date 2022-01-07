
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLenum ;
typedef int GLXX_CLIENT_STATE_T ;


 int set_error (int *,int ) ;

void glxx_set_error(GLXX_CLIENT_STATE_T *state, GLenum error)
{
   set_error(state,error);
}
