
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLfloat ;


 int GL_ARRAY_BUFFER ;
 int GL_STATIC_DRAW ;
 int glBufferData (int ,size_t,int const*,int ) ;
 int memcpy (int *,int const*,size_t) ;
 scalar_t__ realloc (int *,size_t) ;
 int retro_assert (int *) ;

__attribute__((used)) static void gl_glsl_set_vbo(GLfloat **buffer, size_t *buffer_elems,
      const GLfloat *data, size_t elems)
{
   if (elems > *buffer_elems)
   {
      GLfloat *new_buffer = (GLfloat*)
         realloc(*buffer, elems * sizeof(GLfloat));
      retro_assert(new_buffer);
      *buffer = new_buffer;
   }

   memcpy(*buffer, data, elems * sizeof(GLfloat));
   glBufferData(GL_ARRAY_BUFFER, elems * sizeof(GLfloat),
         data, GL_STATIC_DRAW);
   *buffer_elems = elems;
}
