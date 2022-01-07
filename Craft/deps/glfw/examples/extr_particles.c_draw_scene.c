
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mat4x4 ;
typedef int GLfloat ;
typedef int GLFWwindow ;


 int GL_BACK ;
 int GL_CCW ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_CULL_FACE ;
 int GL_DEPTH_BUFFER_BIT ;
 int GL_DEPTH_TEST ;
 int GL_EXP ;
 int GL_FOG ;
 int GL_FOG_COLOR ;
 int GL_FOG_DENSITY ;
 int GL_FOG_MODE ;
 int GL_LEQUAL ;
 int GL_LIGHTING ;
 int GL_MODELVIEW ;
 int GL_PROJECTION ;
 int GL_TRUE ;
 double M_PI ;
 int aspect_ratio ;
 double cos (double) ;
 int draw_floor () ;
 int draw_fountain () ;
 int draw_particles (int *,double,float) ;
 int fog_color ;
 int glClear (int) ;
 int glClearColor (float,float,float,float) ;
 int glCullFace (int ) ;
 int glDepthFunc (int ) ;
 int glDepthMask (int ) ;
 int glDisable (int ) ;
 int glEnable (int ) ;
 int glFogf (int ,float) ;
 int glFogfv (int ,int ) ;
 int glFogi (int ,int ) ;
 int glFrontFace (int ) ;
 int glLoadIdentity () ;
 int glLoadMatrixf (int const*) ;
 int glMatrixMode (int ) ;
 int glRotated (double,double,double,double) ;
 int glTranslated (double,double,double) ;
 int mat4x4_perspective (scalar_t__,float,int ,double,double) ;
 int setup_lights () ;
 double sin (double) ;

__attribute__((used)) static void draw_scene(GLFWwindow* window, double t)
{
    double xpos, ypos, zpos, angle_x, angle_y, angle_z;
    static double t_old = 0.0;
    float dt;
    mat4x4 projection;


    dt = (float) (t - t_old);
    t_old = t;

    mat4x4_perspective(projection,
                       65.f * (float) M_PI / 180.f,
                       aspect_ratio,
                       1.0, 60.0);

    glClearColor(0.1f, 0.1f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    glMatrixMode(GL_PROJECTION);
    glLoadMatrixf((const GLfloat*) projection);


    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();


    angle_x = 90.0 - 10.0;
    angle_y = 10.0 * sin(0.3 * t);
    angle_z = 10.0 * t;
    glRotated(-angle_x, 1.0, 0.0, 0.0);
    glRotated(-angle_y, 0.0, 1.0, 0.0);
    glRotated(-angle_z, 0.0, 0.0, 1.0);


    xpos = 15.0 * sin((M_PI / 180.0) * angle_z) +
             2.0 * sin((M_PI / 180.0) * 3.1 * t);
    ypos = -15.0 * cos((M_PI / 180.0) * angle_z) +
             2.0 * cos((M_PI / 180.0) * 2.9 * t);
    zpos = 4.0 + 2.0 * cos((M_PI / 180.0) * 4.9 * t);
    glTranslated(-xpos, -ypos, -zpos);

    glFrontFace(GL_CCW);
    glCullFace(GL_BACK);
    glEnable(GL_CULL_FACE);

    setup_lights();
    glEnable(GL_LIGHTING);

    glEnable(GL_FOG);
    glFogi(GL_FOG_MODE, GL_EXP);
    glFogf(GL_FOG_DENSITY, 0.05f);
    glFogfv(GL_FOG_COLOR, fog_color);

    draw_floor();

    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LEQUAL);
    glDepthMask(GL_TRUE);

    draw_fountain();

    glDisable(GL_LIGHTING);
    glDisable(GL_FOG);


    draw_particles(window, t, dt);


    glDisable(GL_DEPTH_TEST);
}
