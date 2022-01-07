
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef scalar_t__ GLint ;
typedef int GLenum ;
typedef char GLchar ;


 int GL_COMPILE_STATUS ;
 scalar_t__ GL_FALSE ;
 int GL_INFO_LOG_LENGTH ;
 char* calloc (scalar_t__,int) ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int glCompileShader (int ) ;
 int glCreateShader (int ) ;
 int glGetShaderInfoLog (int ,scalar_t__,int *,char*) ;
 int glGetShaderiv (int ,int ,scalar_t__*) ;
 int glShaderSource (int ,int,char const**,int *) ;
 int stderr ;

GLuint make_shader(GLenum type, const char *source) {
    GLuint shader = glCreateShader(type);
    glShaderSource(shader, 1, &source, ((void*)0));
    glCompileShader(shader);
    GLint status;
    glGetShaderiv(shader, GL_COMPILE_STATUS, &status);
    if (status == GL_FALSE) {
        GLint length;
        glGetShaderiv(shader, GL_INFO_LOG_LENGTH, &length);
        GLchar *info = calloc(length, sizeof(GLchar));
        glGetShaderInfoLog(shader, length, ((void*)0), info);
        fprintf(stderr, "glCompileShader failed:\n%s\n", info);
        free(info);
    }
    return shader;
}
