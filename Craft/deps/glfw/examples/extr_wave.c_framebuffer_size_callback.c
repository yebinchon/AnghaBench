
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mat4x4 ;
typedef int GLfloat ;
typedef int GLFWwindow ;


 int GL_PROJECTION ;
 scalar_t__ M_PI ;
 int glLoadMatrixf (int const*) ;
 int glMatrixMode (int ) ;
 int glViewport (int ,int ,int,int) ;
 int mat4x4_perspective (scalar_t__,float,float,float,float) ;

void framebuffer_size_callback(GLFWwindow* window, int width, int height)
{
    float ratio = 1.f;
    mat4x4 projection;

    if (height > 0)
        ratio = (float) width / (float) height;


    glViewport(0, 0, width, height);


    glMatrixMode(GL_PROJECTION);
    mat4x4_perspective(projection,
                       60.f * (float) M_PI / 180.f,
                       ratio,
                       1.f, 1024.f);
    glLoadMatrixf((const GLfloat*) projection);
}
