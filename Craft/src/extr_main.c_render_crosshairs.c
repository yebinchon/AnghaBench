
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int scale; int height; int width; } ;
struct TYPE_5__ {int matrix; int program; } ;
typedef int GLuint ;
typedef TYPE_1__ Attrib ;


 int GL_COLOR_LOGIC_OP ;
 int GL_FALSE ;
 int del_buffer (int ) ;
 int draw_lines (TYPE_1__*,int ,int,int) ;
 TYPE_3__* g ;
 int gen_crosshair_buffer () ;
 int glDisable (int ) ;
 int glEnable (int ) ;
 int glLineWidth (int) ;
 int glUniformMatrix4fv (int ,int,int ,float*) ;
 int glUseProgram (int ) ;
 int set_matrix_2d (float*,int ,int ) ;

void render_crosshairs(Attrib *attrib) {
    float matrix[16];
    set_matrix_2d(matrix, g->width, g->height);
    glUseProgram(attrib->program);
    glLineWidth(4 * g->scale);
    glEnable(GL_COLOR_LOGIC_OP);
    glUniformMatrix4fv(attrib->matrix, 1, GL_FALSE, matrix);
    GLuint crosshair_buffer = gen_crosshair_buffer();
    draw_lines(attrib, crosshair_buffer, 2, 4);
    del_buffer(crosshair_buffer);
    glDisable(GL_COLOR_LOGIC_OP);
}
