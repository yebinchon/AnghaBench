
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int height; int width; } ;
struct TYPE_5__ {int extra1; int sampler; int matrix; int program; } ;
typedef int GLuint ;
typedef TYPE_1__ Attrib ;


 int GL_FALSE ;
 int del_buffer (int ) ;
 int draw_text (TYPE_1__*,int ,int) ;
 TYPE_3__* g ;
 int gen_text_buffer (float,float,float,char*) ;
 int glUniform1i (int ,int) ;
 int glUniformMatrix4fv (int ,int,int ,float*) ;
 int glUseProgram (int ) ;
 int set_matrix_2d (float*,int ,int ) ;
 int strlen (char*) ;

void render_text(
    Attrib *attrib, int justify, float x, float y, float n, char *text)
{
    float matrix[16];
    set_matrix_2d(matrix, g->width, g->height);
    glUseProgram(attrib->program);
    glUniformMatrix4fv(attrib->matrix, 1, GL_FALSE, matrix);
    glUniform1i(attrib->sampler, 1);
    glUniform1i(attrib->extra1, 0);
    int length = strlen(text);
    x -= n * justify * (length - 1) / 2;
    GLuint buffer = gen_text_buffer(x, y, n, text);
    draw_text(attrib, buffer, length);
    del_buffer(buffer);
}
