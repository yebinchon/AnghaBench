
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef int Attrib ;


 int GL_BLEND ;
 int GL_ONE_MINUS_SRC_ALPHA ;
 int GL_SRC_ALPHA ;
 int draw_triangles_2d (int *,int ,int) ;
 int glBlendFunc (int ,int ) ;
 int glDisable (int ) ;
 int glEnable (int ) ;

void draw_text(Attrib *attrib, GLuint buffer, int length) {
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    draw_triangles_2d(attrib, buffer, length * 6);
    glDisable(GL_BLEND);
}
