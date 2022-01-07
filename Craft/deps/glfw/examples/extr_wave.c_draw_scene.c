
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;


 int GL_COLOR_BUFFER_BIT ;
 int GL_DEPTH_BUFFER_BIT ;
 int GL_MODELVIEW ;
 int GL_QUADS ;
 int GL_UNSIGNED_INT ;
 int QUADNUM ;
 int alpha ;
 int beta ;
 int glClear (int) ;
 int glDrawElements (int ,int,int ,int ) ;
 int glLoadIdentity () ;
 int glMatrixMode (int ) ;
 int glRotatef (int ,double,double,double) ;
 int glTranslatef (double,double,int ) ;
 int glfwSwapBuffers (int *) ;
 int quad ;
 int zoom ;

void draw_scene(GLFWwindow* window)
{

    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);


    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();


    glTranslatef(0.0, 0.0, -zoom);

    glRotatef(beta, 1.0, 0.0, 0.0);
    glRotatef(alpha, 0.0, 0.0, 1.0);

    glDrawElements(GL_QUADS, 4 * QUADNUM, GL_UNSIGNED_INT, quad);

    glfwSwapBuffers(window);
}
