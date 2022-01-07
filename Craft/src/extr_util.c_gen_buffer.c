
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef int GLsizei ;
typedef int GLfloat ;


 int GL_ARRAY_BUFFER ;
 int GL_STATIC_DRAW ;
 int glBindBuffer (int ,int ) ;
 int glBufferData (int ,int ,int *,int ) ;
 int glGenBuffers (int,int *) ;

GLuint gen_buffer(GLsizei size, GLfloat *data) {
    GLuint buffer;
    glGenBuffers(1, &buffer);
    glBindBuffer(GL_ARRAY_BUFFER, buffer);
    glBufferData(GL_ARRAY_BUFFER, size, data, GL_STATIC_DRAW);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    return buffer;
}
