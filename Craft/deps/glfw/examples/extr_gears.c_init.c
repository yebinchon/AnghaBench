
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float GLfloat ;


 int GL_AMBIENT_AND_DIFFUSE ;
 int GL_COMPILE ;
 int GL_CULL_FACE ;
 int GL_DEPTH_TEST ;
 int GL_FRONT ;
 int GL_LIGHT0 ;
 int GL_LIGHTING ;
 int GL_NORMALIZE ;
 int GL_POSITION ;
 int gear (float,float,float,int,float) ;
 int gear1 ;
 int gear2 ;
 int gear3 ;
 int glEnable (int ) ;
 int glEndList () ;
 int glGenLists (int) ;
 int glLightfv (int ,int ,float*) ;
 int glMaterialfv (int ,int ,float*) ;
 int glNewList (int ,int ) ;

__attribute__((used)) static void init(void)
{
  static GLfloat pos[4] = {5.f, 5.f, 10.f, 0.f};
  static GLfloat red[4] = {0.8f, 0.1f, 0.f, 1.f};
  static GLfloat green[4] = {0.f, 0.8f, 0.2f, 1.f};
  static GLfloat blue[4] = {0.2f, 0.2f, 1.f, 1.f};

  glLightfv(GL_LIGHT0, GL_POSITION, pos);
  glEnable(GL_CULL_FACE);
  glEnable(GL_LIGHTING);
  glEnable(GL_LIGHT0);
  glEnable(GL_DEPTH_TEST);


  gear1 = glGenLists(1);
  glNewList(gear1, GL_COMPILE);
  glMaterialfv(GL_FRONT, GL_AMBIENT_AND_DIFFUSE, red);
  gear(1.f, 4.f, 1.f, 20, 0.7f);
  glEndList();

  gear2 = glGenLists(1);
  glNewList(gear2, GL_COMPILE);
  glMaterialfv(GL_FRONT, GL_AMBIENT_AND_DIFFUSE, green);
  gear(0.5f, 2.f, 2.f, 10, 0.7f);
  glEndList();

  gear3 = glGenLists(1);
  glNewList(gear3, GL_COMPILE);
  glMaterialfv(GL_FRONT, GL_AMBIENT_AND_DIFFUSE, blue);
  gear(1.3f, 2.f, 0.5f, 10, 0.7f);
  glEndList();

  glEnable(GL_NORMALIZE);
}
