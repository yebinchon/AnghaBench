
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uv; int position; } ;
typedef int GLvoid ;
typedef int GLuint ;
typedef int GLfloat ;
typedef TYPE_1__ Attrib ;


 int GL_ARRAY_BUFFER ;
 int GL_FALSE ;
 int GL_FLOAT ;
 int GL_TRIANGLES ;
 int glBindBuffer (int ,int ) ;
 int glDisableVertexAttribArray (int ) ;
 int glDrawArrays (int ,int ,int) ;
 int glEnableVertexAttribArray (int ) ;
 int glVertexAttribPointer (int ,int,int ,int ,int,int *) ;

void draw_triangles_3d_text(Attrib *attrib, GLuint buffer, int count) {
    glBindBuffer(GL_ARRAY_BUFFER, buffer);
    glEnableVertexAttribArray(attrib->position);
    glEnableVertexAttribArray(attrib->uv);
    glVertexAttribPointer(attrib->position, 3, GL_FLOAT, GL_FALSE,
        sizeof(GLfloat) * 5, 0);
    glVertexAttribPointer(attrib->uv, 2, GL_FLOAT, GL_FALSE,
        sizeof(GLfloat) * 5, (GLvoid *)(sizeof(GLfloat) * 3));
    glDrawArrays(GL_TRIANGLES, 0, count);
    glDisableVertexAttribArray(attrib->position);
    glDisableVertexAttribArray(attrib->uv);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
}
