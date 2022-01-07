
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * dispbuffer ;
 int free (int *) ;
 scalar_t__ fshader ;
 int glDeleteBuffers (int,scalar_t__*) ;
 int glDeleteProgram (scalar_t__) ;
 int glDeleteShader (scalar_t__) ;
 int glDeleteTextures (int,scalar_t__*) ;
 int glDeleteVertexArrays (int,scalar_t__*) ;
 scalar_t__ gl_shader_prog ;
 scalar_t__ gl_texture_id ;
 scalar_t__ vao ;
 scalar_t__ vbo ;
 int ** vdp1framebuffer ;
 scalar_t__ vshader ;

void VIDSoftDeInit(void)
{
   if (dispbuffer)
   {
      free(dispbuffer);
      dispbuffer = ((void*)0);
   }

   if (vdp1framebuffer[0])
      free(vdp1framebuffer[0]);

   if (vdp1framebuffer[1])
      free(vdp1framebuffer[1]);
}
