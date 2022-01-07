
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int surface; int display; } ;
typedef TYPE_1__ CUBE_STATE_T ;


 int GL_COLOR_BUFFER_BIT ;
 int GL_DEPTH_BUFFER_BIT ;
 int GL_TRIANGLE_STRIP ;
 int eglSwapBuffers (int ,int ) ;
 int glClear (int) ;
 int glDrawArrays (int ,int,int) ;
 int glRotatef (float,float,float,float) ;

__attribute__((used)) static void redraw_scene(CUBE_STATE_T *state)
{

   glClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );


   glRotatef(270.f, 0.f, 0.f, 1.f );


   glDrawArrays( GL_TRIANGLE_STRIP, 0, 4);


   glRotatef(90.f, 0.f, 0.f, 1.f );
   glDrawArrays( GL_TRIANGLE_STRIP, 4, 4);

   glRotatef(90.f, 1.f, 0.f, 0.f );
   glDrawArrays( GL_TRIANGLE_STRIP, 8, 4);

   glRotatef(90.f, 1.f, 0.f, 0.f );
   glDrawArrays( GL_TRIANGLE_STRIP, 12, 4);

   glRotatef(270.f, 0.f, 1.f, 0.f );
   glDrawArrays( GL_TRIANGLE_STRIP, 16, 4);

   glRotatef(90.f, 0.f, 1.f, 0.f );
   glDrawArrays( GL_TRIANGLE_STRIP, 20, 4);

   eglSwapBuffers(state->display, state->surface);
}
