
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float GLfloat ;


 int GL_DIFFUSE ;
 int GL_FRONT ;
 int GL_SHININESS ;
 int GL_SPECULAR ;
 int drawTorus () ;
 int glColor4fv (float const*) ;
 int glMaterialf (int ,int ,float const) ;
 int glMaterialfv (int ,int ,float const*) ;
 int glPopMatrix () ;
 int glPushMatrix () ;
 int glRotatef (float,float,float,float) ;
 scalar_t__ rot_x ;
 scalar_t__ rot_y ;
 scalar_t__ rot_z ;

__attribute__((used)) static void drawScene(void)
{
    const GLfloat model_diffuse[4] = {1.0f, 0.8f, 0.8f, 1.0f};
    const GLfloat model_specular[4] = {0.6f, 0.6f, 0.6f, 1.0f};
    const GLfloat model_shininess = 20.0f;

    glPushMatrix();


    glRotatef((GLfloat) rot_x * 0.5f, 1.0f, 0.0f, 0.0f);
    glRotatef((GLfloat) rot_y * 0.5f, 0.0f, 1.0f, 0.0f);
    glRotatef((GLfloat) rot_z * 0.5f, 0.0f, 0.0f, 1.0f);


    glColor4fv(model_diffuse);


    glMaterialfv(GL_FRONT, GL_DIFFUSE, model_diffuse);
    glMaterialfv(GL_FRONT, GL_SPECULAR, model_specular);
    glMaterialf(GL_FRONT, GL_SHININESS, model_shininess);


    drawTorus();

    glPopMatrix();
}
