
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numpoints; int ** p; } ;
typedef TYPE_1__ winding_t ;


 int GL_LINE_LOOP ;
 int GL_POLYGON ;
 int drawflag ;
 int glBegin (int ) ;
 int glColor4f (int,int ,int ,double) ;
 int glEnd () ;
 int glFlush () ;
 int glVertex3f (int ,int ,int ) ;

void DrawAuxWinding (winding_t *w)
{
 int i;

 if (!drawflag)
  return;

 glColor4f (0,0,0,0.5);
 glBegin (GL_LINE_LOOP);
 for (i=0 ; i<w->numpoints ; i++)
  glVertex3f (w->p[i][0],w->p[i][1],w->p[i][2] );
 glEnd ();

 glColor4f (1,0,0,0.3);
 glBegin (GL_POLYGON);
 for (i=0 ; i<w->numpoints ; i++)
  glVertex3f (w->p[i][0],w->p[i][1],w->p[i][2] );
 glEnd ();

 glFlush ();
}
