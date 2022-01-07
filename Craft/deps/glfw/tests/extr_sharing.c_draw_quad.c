
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;


 int GL_MODULATE ;
 int GL_PROJECTION ;
 int GL_QUADS ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_ENV ;
 int GL_TEXTURE_ENV_MODE ;
 int glBegin (int ) ;
 int glBindTexture (int ,int ) ;
 int glEnable (int ) ;
 int glEnd () ;
 int glLoadIdentity () ;
 int glMatrixMode (int ) ;
 int glOrtho (float,float,float,float,float,float) ;
 int glTexCoord2f (float,float) ;
 int glTexEnvi (int ,int ,int ) ;
 int glVertex2f (float,float) ;
 int glViewport (int ,int ,int,int) ;
 int glfwGetCurrentContext () ;
 int glfwGetFramebufferSize (int ,int*,int*) ;

__attribute__((used)) static void draw_quad(GLuint texture)
{
    int width, height;
    glfwGetFramebufferSize(glfwGetCurrentContext(), &width, &height);

    glViewport(0, 0, width, height);

    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glOrtho(0.f, 1.f, 0.f, 1.f, 0.f, 1.f);

    glEnable(GL_TEXTURE_2D);
    glBindTexture(GL_TEXTURE_2D, texture);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);

    glBegin(GL_QUADS);

    glTexCoord2f(0.f, 0.f);
    glVertex2f(0.f, 0.f);

    glTexCoord2f(1.f, 0.f);
    glVertex2f(1.f, 0.f);

    glTexCoord2f(1.f, 1.f);
    glVertex2f(1.f, 1.f);

    glTexCoord2f(0.f, 1.f);
    glVertex2f(0.f, 1.f);

    glEnd();
}
