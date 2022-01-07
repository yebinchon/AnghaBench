
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLint ;
typedef float GLfloat ;
typedef int GLFWwindow ;


 int GL_MODELVIEW ;
 int GL_PROJECTION ;
 int glFrustum (float,float,float,float,float,float) ;
 int glLoadIdentity () ;
 int glMatrixMode (int ) ;
 int glTranslatef (double,double,double) ;
 int glViewport (int ,int ,int ,int ) ;

void reshape( GLFWwindow* window, int width, int height )
{
  GLfloat h = (GLfloat) height / (GLfloat) width;
  GLfloat xmax, znear, zfar;

  znear = 5.0f;
  zfar = 30.0f;
  xmax = znear * 0.5f;

  glViewport( 0, 0, (GLint) width, (GLint) height );
  glMatrixMode( GL_PROJECTION );
  glLoadIdentity();
  glFrustum( -xmax, xmax, -xmax*h, xmax*h, znear, zfar );
  glMatrixMode( GL_MODELVIEW );
  glLoadIdentity();
  glTranslatef( 0.0, 0.0, -20.0 );
}
