
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ OpenGLLib; } ;


 void* GPA (char*) ;
 TYPE_1__ glw_state ;

void *qwglGetProcAddress(char *symbol)
{
 if (glw_state.OpenGLLib)
  return GPA ( symbol );
 return ((void*)0);
}
