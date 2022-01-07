
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GLuint ;


 int glDeleteBuffers (int,scalar_t__*) ;

__attribute__((used)) static void destroy_vbo(GLuint *vbo)
{
   glDeleteBuffers(1, vbo);
   *vbo = 0;
}
