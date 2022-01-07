
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef int GLenum ;


 int GL_STATIC_DRAW ;
 int glBindBuffer (int ,int ) ;
 int glBufferData (int ,int,void*,int ) ;
 int glGenBuffers (int,int *) ;
 int vc_assert (int ) ;

__attribute__((used)) static void create_vbo(GLenum type, GLuint *vbo, int size, void *data)
{
   glGenBuffers(1, vbo);
   vc_assert(*vbo);
   glBindBuffer(type, *vbo);
   glBufferData(type, size, data, GL_STATIC_DRAW);
   glBindBuffer(type, 0);
}
