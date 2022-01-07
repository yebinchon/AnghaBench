
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int surface; int display; } ;
typedef TYPE_1__ VIDTEX_T ;


 int GL_COLOR_BUFFER_BIT ;
 int VIDTEX_CHECK_GL (TYPE_1__*) ;
 int eglSwapBuffers (int ,int ) ;
 int glClear (int ) ;
 int glClearColor (int ,int ,int ,int ) ;
 int glFlush () ;

__attribute__((used)) static void vidtex_flush_gl(VIDTEX_T *vt)
{
   int i;

   glFlush();
   glClearColor(0, 0, 0, 0);

   for (i = 0; i < 10; i++)
   {
      glClear(GL_COLOR_BUFFER_BIT);
      eglSwapBuffers(vt->display, vt->surface);
      VIDTEX_CHECK_GL(vt);
   }

   glFlush();
   VIDTEX_CHECK_GL(vt);
}
