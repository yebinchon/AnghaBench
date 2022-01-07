
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;


 int glDeleteBuffers (int,int *) ;

void del_buffer(GLuint buffer) {
    glDeleteBuffers(1, &buffer);
}
