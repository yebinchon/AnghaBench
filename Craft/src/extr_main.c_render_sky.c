
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int render_radius; int fov; int height; int width; } ;
struct TYPE_10__ {int timer; int sampler; int matrix; int program; } ;
struct TYPE_8__ {int ry; int rx; } ;
struct TYPE_9__ {TYPE_1__ state; } ;
typedef TYPE_1__ State ;
typedef TYPE_2__ Player ;
typedef int GLuint ;
typedef TYPE_3__ Attrib ;


 int GL_FALSE ;
 int draw_triangles_3d (TYPE_3__*,int ,int) ;
 TYPE_6__* g ;
 int glUniform1f (int ,int ) ;
 int glUniform1i (int ,int) ;
 int glUniformMatrix4fv (int ,int,int ,float*) ;
 int glUseProgram (int ) ;
 int set_matrix_3d (float*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int time_of_day () ;

void render_sky(Attrib *attrib, Player *player, GLuint buffer) {
    State *s = &player->state;
    float matrix[16];
    set_matrix_3d(
        matrix, g->width, g->height,
        0, 0, 0, s->rx, s->ry, g->fov, 0, g->render_radius);
    glUseProgram(attrib->program);
    glUniformMatrix4fv(attrib->matrix, 1, GL_FALSE, matrix);
    glUniform1i(attrib->sampler, 2);
    glUniform1f(attrib->timer, time_of_day());
    draw_triangles_3d(attrib, buffer, 512 * 3);
}
