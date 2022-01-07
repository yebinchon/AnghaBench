
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {float member_0; float member_1; float member_2; } ;
typedef TYPE_1__ vec3 ;
typedef scalar_t__ mat4x4 ;
typedef int GLfloat ;


 int GL_COLOR_BUFFER_BIT ;
 int GL_FALSE ;
 int GL_LINES ;
 int GL_TRUE ;
 int glBegin (int ) ;
 int glClear (int ) ;
 int glClearColor (float,float,float,float) ;
 int glColor3f (float,float,float) ;
 int glDepthMask (int ) ;
 int glEnd () ;
 int glLoadMatrixf (int const*) ;
 int glPopMatrix () ;
 int glPushMatrix () ;
 int glVertex3f (float,float,float) ;
 int mat4x4_look_at (scalar_t__,TYPE_1__,TYPE_1__,TYPE_1__) ;

__attribute__((used)) static void drawGrid(float scale, int steps)
{
    int i;
    float x, y;
    mat4x4 view;

    glPushMatrix();


    glClearColor(0.05f, 0.05f, 0.2f, 0.0f);
    glClear(GL_COLOR_BUFFER_BIT);


    {
        vec3 eye = { 0.f, 0.f, 1.f };
        vec3 center = { 0.f, 0.f, 0.f };
        vec3 up = { 0.f, 1.f, 0.f };
        mat4x4_look_at(view, eye, center, up);
    }
    glLoadMatrixf((const GLfloat*) view);


    glDepthMask(GL_FALSE);


    glColor3f(0.0f, 0.5f, 0.5f);

    glBegin(GL_LINES);


    x = scale * 0.5f * (float) (steps - 1);
    y = -scale * 0.5f * (float) (steps - 1);
    for (i = 0; i < steps; i++)
    {
        glVertex3f(-x, y, 0.0f);
        glVertex3f(x, y, 0.0f);
        y += scale;
    }


    x = -scale * 0.5f * (float) (steps - 1);
    y = scale * 0.5f * (float) (steps - 1);
    for (i = 0; i < steps; i++)
    {
        glVertex3f(x, -y, 0.0f);
        glVertex3f(x, y, 0.0f);
        x += scale;
    }

    glEnd();


    glDepthMask(GL_TRUE);

    glPopMatrix();
}
