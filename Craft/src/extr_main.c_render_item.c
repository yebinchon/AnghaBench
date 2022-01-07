
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t item_index; int scale; int height; int width; } ;
struct TYPE_6__ {int timer; int sampler; int camera; int matrix; int program; } ;
typedef int GLuint ;
typedef TYPE_1__ Attrib ;


 int GL_FALSE ;
 int del_buffer (int ) ;
 int draw_cube (TYPE_1__*,int ) ;
 int draw_plant (TYPE_1__*,int ) ;
 TYPE_3__* g ;
 int gen_cube_buffer (int ,int ,int ,double,int) ;
 int gen_plant_buffer (int ,int ,int ,double,int) ;
 int glUniform1f (int ,int ) ;
 int glUniform1i (int ,int ) ;
 int glUniform3f (int ,int ,int ,int) ;
 int glUniformMatrix4fv (int ,int,int ,float*) ;
 int glUseProgram (int ) ;
 scalar_t__ is_plant (int) ;
 int* items ;
 int set_matrix_item (float*,int ,int ,int ) ;
 int time_of_day () ;

void render_item(Attrib *attrib) {
    float matrix[16];
    set_matrix_item(matrix, g->width, g->height, g->scale);
    glUseProgram(attrib->program);
    glUniformMatrix4fv(attrib->matrix, 1, GL_FALSE, matrix);
    glUniform3f(attrib->camera, 0, 0, 5);
    glUniform1i(attrib->sampler, 0);
    glUniform1f(attrib->timer, time_of_day());
    int w = items[g->item_index];
    if (is_plant(w)) {
        GLuint buffer = gen_plant_buffer(0, 0, 0, 0.5, w);
        draw_plant(attrib, buffer);
        del_buffer(buffer);
    }
    else {
        GLuint buffer = gen_cube_buffer(0, 0, 0, 0.5, w);
        draw_cube(attrib, buffer);
        del_buffer(buffer);
    }
}
