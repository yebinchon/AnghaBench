
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef scalar_t__ GLint ;
typedef char GLchar ;


 scalar_t__ GL_FALSE ;
 int GL_INFO_LOG_LENGTH ;
 int GL_LINK_STATUS ;
 char* calloc (scalar_t__,int) ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int glAttachShader (int ,int ) ;
 int glCreateProgram () ;
 int glDeleteShader (int ) ;
 int glDetachShader (int ,int ) ;
 int glGetProgramInfoLog (int ,scalar_t__,int *,char*) ;
 int glGetProgramiv (int ,int ,scalar_t__*) ;
 int glLinkProgram (int ) ;
 int stderr ;

GLuint make_program(GLuint shader1, GLuint shader2) {
    GLuint program = glCreateProgram();
    glAttachShader(program, shader1);
    glAttachShader(program, shader2);
    glLinkProgram(program);
    GLint status;
    glGetProgramiv(program, GL_LINK_STATUS, &status);
    if (status == GL_FALSE) {
        GLint length;
        glGetProgramiv(program, GL_INFO_LOG_LENGTH, &length);
        GLchar *info = calloc(length, sizeof(GLchar));
        glGetProgramInfoLog(program, length, ((void*)0), info);
        fprintf(stderr, "glLinkProgram failed: %s\n", info);
        free(info);
    }
    glDetachShader(program, shader1);
    glDetachShader(program, shader2);
    glDeleteShader(shader1);
    glDeleteShader(shader2);
    return program;
}
