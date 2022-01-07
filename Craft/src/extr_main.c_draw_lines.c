
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int position; } ;
typedef int GLuint ;
typedef TYPE_1__ Attrib ;


 int GL_ARRAY_BUFFER ;
 int GL_FALSE ;
 int GL_FLOAT ;
 int GL_LINES ;
 int glBindBuffer (int ,int ) ;
 int glDisableVertexAttribArray (int ) ;
 int glDrawArrays (int ,int ,int) ;
 int glEnableVertexAttribArray (int ) ;
 int glVertexAttribPointer (int ,int,int ,int ,int ,int ) ;

void draw_lines(Attrib *attrib, GLuint buffer, int components, int count) {
    glBindBuffer(GL_ARRAY_BUFFER, buffer);
    glEnableVertexAttribArray(attrib->position);
    glVertexAttribPointer(
        attrib->position, components, GL_FLOAT, GL_FALSE, 0, 0);
    glDrawArrays(GL_LINES, 0, count);
    glDisableVertexAttribArray(attrib->position);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
}
