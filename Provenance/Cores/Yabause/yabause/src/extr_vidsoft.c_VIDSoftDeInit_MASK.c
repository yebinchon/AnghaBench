#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/ * dispbuffer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ fshader ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__*) ; 
 scalar_t__ gl_shader_prog ; 
 scalar_t__ gl_texture_id ; 
 scalar_t__ vao ; 
 scalar_t__ vbo ; 
 int /*<<< orphan*/ ** vdp1framebuffer ; 
 scalar_t__ vshader ; 

void FUNC6(void)
{
   if (dispbuffer)
   {
      FUNC0(dispbuffer);
      dispbuffer = NULL;
   }

   if (vdp1framebuffer[0])
      FUNC0(vdp1framebuffer[0]);

   if (vdp1framebuffer[1])
      FUNC0(vdp1framebuffer[1]);
#ifdef USE_OPENGL
   if (gl_texture_id) { glDeleteTextures(1, &gl_texture_id); }
   if (gl_shader_prog) { glDeleteProgram(gl_shader_prog); }
   if (vshader) { glDeleteShader(vshader); }
   if (fshader) { glDeleteShader(fshader); }
   if (vao) { glDeleteVertexArrays(1, &vao); }
   if (vbo) { glDeleteBuffers(1, &vbo); }
#endif
}