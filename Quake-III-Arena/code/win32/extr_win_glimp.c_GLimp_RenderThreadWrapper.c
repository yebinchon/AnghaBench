
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hDC; } ;


 int glimpRenderThread () ;
 TYPE_1__ glw_state ;
 int qwglMakeCurrent (int ,int *) ;

void GLimp_RenderThreadWrapper( void ) {
 glimpRenderThread();


 qwglMakeCurrent( glw_state.hDC, ((void*)0) );
}
