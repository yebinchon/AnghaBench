
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TEAPOT_STATE_T ;


 int GL_AMBIENT ;
 int GL_CULL_FACE ;
 int GL_DEPTH_TEST ;
 int GL_LEQUAL ;
 int GL_LIGHT0 ;
 int GL_LIGHTING ;
 int glClearColor (float,float,float,float) ;
 int glClearDepthf (double) ;
 int glDepthFunc (int ) ;
 int glEnable (int ) ;
 int glLightfv (int ,int ,float*) ;

__attribute__((used)) static void init_ogl(TEAPOT_STATE_T *state)
{

   glClearColor((0.3922f+7*0.5f)/8, (0.1176f+7*0.5f)/8, (0.5882f+7*0.5f)/8, 1.0f);


   glEnable(GL_CULL_FACE);

   glEnable(GL_DEPTH_TEST);
   glClearDepthf(1.0);
   glDepthFunc(GL_LEQUAL);

   float noAmbient[] = {1.0f, 1.0f, 1.0f, 1.0f};
   glLightfv(GL_LIGHT0, GL_AMBIENT, noAmbient);
   glEnable(GL_LIGHT0);
   glEnable(GL_LIGHTING);
}
