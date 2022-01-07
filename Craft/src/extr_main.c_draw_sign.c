
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef int Attrib ;


 int GL_POLYGON_OFFSET_FILL ;
 int draw_triangles_3d_text (int *,int ,int) ;
 int glDisable (int ) ;
 int glEnable (int ) ;
 int glPolygonOffset (int,int) ;

void draw_sign(Attrib *attrib, GLuint buffer, int length) {
    glEnable(GL_POLYGON_OFFSET_FILL);
    glPolygonOffset(-8, -1024);
    draw_triangles_3d_text(attrib, buffer, length * 6);
    glDisable(GL_POLYGON_OFFSET_FILL);
}
