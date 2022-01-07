
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* vec_t ;


 int GL_BLEND ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_DEPTH_TEST ;
 int GL_FILL ;
 int GL_FRONT_AND_BACK ;
 int GL_ONE_MINUS_SRC_ALPHA ;
 int GL_POLYGON ;
 int GL_SRC_ALPHA ;
 int InitWindow () ;
 void** draw_maxs ;
 void** draw_mins ;
 int drawflag ;
 int glBegin (int ) ;
 int glBlendFunc (int ,int ) ;
 int glClear (int ) ;
 int glClearColor (int,double,double,int ) ;
 int glColor3f (int ,int ,int ) ;
 int glColor4f (int,int ,int ,double) ;
 int glDisable (int ) ;
 int glEnable (int ) ;
 int glEnd () ;
 int glFlush () ;
 int glLoadIdentity () ;
 int glPolygonMode (int ,int ) ;
 int glVertex3f (int ,int,int) ;
 int gluLookAt (void*,void*,void*,void*,void*,void*,int ,int,int ) ;
 int gluPerspective (int,int,int,int) ;
 int qtrue ;

void Draw_ClearWindow (void)
{
 static int init;
 int w, h, g;
 vec_t mx, my;

 if (!drawflag)
  return;

 if (!init)
 {
  init = qtrue;
  InitWindow ();
 }

 glClearColor (1,0.8,0.8,0);
 glClear (GL_COLOR_BUFFER_BIT);

 w = (draw_maxs[0] - draw_mins[0]);
 h = (draw_maxs[1] - draw_mins[1]);

 mx = draw_mins[0] + w/2;
 my = draw_mins[1] + h/2;

 g = w > h ? w : h;

 glLoadIdentity ();
    gluPerspective (90, 1, 2, 16384);
 gluLookAt (mx, my, draw_maxs[2] + g/2, mx , my, draw_maxs[2], 0, 1, 0);

 glColor3f (0,0,0);

 glPolygonMode (GL_FRONT_AND_BACK, GL_FILL);
 glDisable (GL_DEPTH_TEST);
 glEnable (GL_BLEND);
 glBlendFunc (GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
 glFlush ();

}
