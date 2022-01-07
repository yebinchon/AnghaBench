
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sign_faces; int sign_buffer; } ;
typedef TYPE_1__ Chunk ;
typedef int Attrib ;


 int GL_POLYGON_OFFSET_FILL ;
 int draw_triangles_3d_text (int *,int ,int) ;
 int glDisable (int ) ;
 int glEnable (int ) ;
 int glPolygonOffset (int,int) ;

void draw_signs(Attrib *attrib, Chunk *chunk) {
    glEnable(GL_POLYGON_OFFSET_FILL);
    glPolygonOffset(-8, -1024);
    draw_triangles_3d_text(attrib, chunk->sign_buffer, chunk->sign_faces * 6);
    glDisable(GL_POLYGON_OFFSET_FILL);
}
