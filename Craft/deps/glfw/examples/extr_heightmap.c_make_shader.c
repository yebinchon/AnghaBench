
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GLuint ;
typedef int GLsizei ;
typedef scalar_t__ GLint ;
typedef scalar_t__ GLenum ;
typedef int GLchar ;


 int GL_COMPILE_STATUS ;
 scalar_t__ GL_FRAGMENT_SHADER ;
 scalar_t__ GL_TRUE ;
 int fprintf (int ,char*,char*) ;
 int glCompileShader (scalar_t__) ;
 scalar_t__ glCreateShader (scalar_t__) ;
 int glDeleteShader (scalar_t__) ;
 int glGetShaderInfoLog (scalar_t__,int,int *,char*) ;
 int glGetShaderiv (scalar_t__,int ,scalar_t__*) ;
 int glShaderSource (scalar_t__,int,int const**,int *) ;
 int stderr ;

__attribute__((used)) static GLuint make_shader(GLenum type, const char* text)
{
    GLuint shader;
    GLint shader_ok;
    GLsizei log_length;
    char info_log[8192];

    shader = glCreateShader(type);
    if (shader != 0)
    {
        glShaderSource(shader, 1, (const GLchar**)&text, ((void*)0));
        glCompileShader(shader);
        glGetShaderiv(shader, GL_COMPILE_STATUS, &shader_ok);
        if (shader_ok != GL_TRUE)
        {
            fprintf(stderr, "ERROR: Failed to compile %s shader\n", (type == GL_FRAGMENT_SHADER) ? "fragment" : "vertex" );
            glGetShaderInfoLog(shader, 8192, &log_length,info_log);
            fprintf(stderr, "ERROR: \n%s\n\n", info_log);
            glDeleteShader(shader);
            shader = 0;
        }
    }
    return shader;
}
