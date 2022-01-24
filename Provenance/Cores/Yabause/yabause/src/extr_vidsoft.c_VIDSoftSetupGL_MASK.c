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
typedef  int /*<<< orphan*/  vertices ;
typedef  scalar_t__ GLint ;
typedef  int /*<<< orphan*/  GLfloat ;
typedef  char GLchar ;

/* Variables and functions */
 int /*<<< orphan*/  GL_ARRAY_BUFFER ; 
 int /*<<< orphan*/  GL_COMPILE_STATUS ; 
 scalar_t__ GL_FALSE ; 
 int /*<<< orphan*/  GL_FLOAT ; 
 int /*<<< orphan*/  GL_FRAGMENT_SHADER ; 
 int /*<<< orphan*/  GL_LINEAR ; 
 int /*<<< orphan*/  GL_LINK_STATUS ; 
 int /*<<< orphan*/  GL_NEAREST ; 
 int /*<<< orphan*/  GL_STATIC_DRAW ; 
 int /*<<< orphan*/  GL_TEXTURE0 ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TEXTURE_MAG_FILTER ; 
 int /*<<< orphan*/  GL_TEXTURE_MIN_FILTER ; 
 int /*<<< orphan*/  GL_VERTEX_SHADER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ bilinear ; 
 int /*<<< orphan*/  fshader ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,float const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gl_shader_prog ; 
 int /*<<< orphan*/  gl_texture_id ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  outputheight ; 
 int /*<<< orphan*/  outputwidth ; 
 int /*<<< orphan*/  vao ; 
 int /*<<< orphan*/  vbo ; 
 int /*<<< orphan*/  vdp2height ; 
 int /*<<< orphan*/  vdp2width ; 
 int /*<<< orphan*/  vshader ; 

void FUNC27(void)
{
#ifdef USE_OPENGL
   GLint status;
   GLint texAttrib;
   GLint posAttrib;

   // Shader sources
   const GLchar* vshader_src =
      "#version 330 core\n"
      "in vec2 position;"
      "in vec2 texcoord;"
      "out vec2 outcoord;"
      "void main() {"
      "   outcoord = texcoord;"
      "   gl_Position = vec4(position, 0.0, 1.0);"
      "}";

   const GLchar* fshader_src =
      "#version 330 core\n"
      "in vec2 outcoord;"
      "out vec4 fragcolor;"
      "uniform sampler2D sattex;"
      "void main() {"
      "   fragcolor = texture(sattex, outcoord);"
      "}";

   const float vertices[16] = {
      -1.0f, -1.0f, // Vertex 1 (X, Y)
      -1.0f, 1.0f,  // Vertex 2 (X, Y)
      1.0f, -1.0f,  // Vertex 3 (X, Y)
      1.0f, 1.0f,   // Vertex 4 (X, Y)
      0.0, 1.0,     // Texture 1 (X, Y)
      0.0, 0.0,     // Texture 2 (X, Y)
      1.0, 1.0,     // Texture 3 (X, Y)
      1.0, 0.0      // Texture 4 (X, Y)
   };

   outputwidth = vdp2width;
   outputheight = vdp2height;

#if defined(USE_OPENGL) && !defined(_OGLES3_)
   glewInit();
#endif

   glGenVertexArrays(1, &vao);
   glBindVertexArray(vao);

   glGenBuffers(1, &vbo);
   glBindBuffer(GL_ARRAY_BUFFER, vbo);
   glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

   vshader = glCreateShader(GL_VERTEX_SHADER);
   glShaderSource(vshader, 1, &vshader_src, NULL);
   glCompileShader(vshader);

   glGetShaderiv(vshader, GL_COMPILE_STATUS, &status);
   if (status == GL_FALSE) { YGLLOG("Failed to compile vertex shader\n"); }

   fshader = glCreateShader(GL_FRAGMENT_SHADER);
   glShaderSource(fshader, 1, &fshader_src, NULL);
   glCompileShader(fshader);

   glGetShaderiv(fshader, GL_COMPILE_STATUS, &status);
   if (status == GL_FALSE) { YGLLOG("Failed to compile fragment shader\n"); }

   gl_shader_prog = glCreateProgram();
   glAttachShader(gl_shader_prog, vshader);
   glAttachShader(gl_shader_prog, fshader);

   glLinkProgram(gl_shader_prog);

   glValidateProgram(gl_shader_prog);
   glGetProgramiv(gl_shader_prog, GL_LINK_STATUS, &status);
   if (status == GL_FALSE) { YGLLOG("Failed to link shader program\n"); }

   glUseProgram(gl_shader_prog);

   posAttrib = glGetAttribLocation(gl_shader_prog, "position");
   glEnableVertexAttribArray(posAttrib);
   glVertexAttribPointer(posAttrib, 2, GL_FLOAT, GL_FALSE, 0, 0);

   texAttrib = glGetAttribLocation(gl_shader_prog, "texcoord");
   glEnableVertexAttribArray(texAttrib);
   glVertexAttribPointer(texAttrib, 2, GL_FLOAT, GL_FALSE, 0, (void*)(8 * sizeof(GLfloat)));

   glGenTextures(1, &gl_texture_id);
   glActiveTexture(GL_TEXTURE0);
   glBindTexture(GL_TEXTURE_2D, gl_texture_id);

   if (bilinear) { glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR); }
   else { glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST); }
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);

   glViewport(0, 0, outputwidth, outputheight);

   glUniform1i(glGetUniformLocation(gl_shader_prog, "sattex"), 0);
#endif
}