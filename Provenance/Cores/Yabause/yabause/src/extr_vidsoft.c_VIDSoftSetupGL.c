
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vertices ;
typedef scalar_t__ GLint ;
typedef int GLfloat ;
typedef char GLchar ;


 int GL_ARRAY_BUFFER ;
 int GL_COMPILE_STATUS ;
 scalar_t__ GL_FALSE ;
 int GL_FLOAT ;
 int GL_FRAGMENT_SHADER ;
 int GL_LINEAR ;
 int GL_LINK_STATUS ;
 int GL_NEAREST ;
 int GL_STATIC_DRAW ;
 int GL_TEXTURE0 ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MIN_FILTER ;
 int GL_VERTEX_SHADER ;
 int YGLLOG (char*) ;
 scalar_t__ bilinear ;
 int fshader ;
 int glActiveTexture (int ) ;
 int glAttachShader (int ,int ) ;
 int glBindBuffer (int ,int ) ;
 int glBindTexture (int ,int ) ;
 int glBindVertexArray (int ) ;
 int glBufferData (int ,int,float const*,int ) ;
 int glCompileShader (int ) ;
 int glCreateProgram () ;
 int glCreateShader (int ) ;
 int glEnableVertexAttribArray (scalar_t__) ;
 int glGenBuffers (int,int *) ;
 int glGenTextures (int,int *) ;
 int glGenVertexArrays (int,int *) ;
 scalar_t__ glGetAttribLocation (int ,char*) ;
 int glGetProgramiv (int ,int ,scalar_t__*) ;
 int glGetShaderiv (int ,int ,scalar_t__*) ;
 int glGetUniformLocation (int ,char*) ;
 int glLinkProgram (int ) ;
 int glShaderSource (int ,int,char const**,int *) ;
 int glTexParameteri (int ,int ,int ) ;
 int glUniform1i (int ,int ) ;
 int glUseProgram (int ) ;
 int glValidateProgram (int ) ;
 int glVertexAttribPointer (scalar_t__,int,int ,scalar_t__,int ,void*) ;
 int glViewport (int ,int ,int ,int ) ;
 int gl_shader_prog ;
 int gl_texture_id ;
 int glewInit () ;
 int outputheight ;
 int outputwidth ;
 int vao ;
 int vbo ;
 int vdp2height ;
 int vdp2width ;
 int vshader ;

void VIDSoftSetupGL(void)
{
}
