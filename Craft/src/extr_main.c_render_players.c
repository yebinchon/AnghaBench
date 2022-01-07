
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int player_count; TYPE_2__* players; int render_radius; int ortho; int fov; int height; int width; } ;
struct TYPE_11__ {int timer; int sampler; int camera; int matrix; int program; } ;
struct TYPE_9__ {int z; int y; int x; int ry; int rx; } ;
struct TYPE_10__ {TYPE_1__ state; } ;
typedef TYPE_1__ State ;
typedef TYPE_2__ Player ;
typedef TYPE_3__ Attrib ;


 int GL_FALSE ;
 int draw_player (TYPE_3__*,TYPE_2__*) ;
 TYPE_6__* g ;
 int glUniform1f (int ,int ) ;
 int glUniform1i (int ,int ) ;
 int glUniform3f (int ,int ,int ,int ) ;
 int glUniformMatrix4fv (int ,int,int ,float*) ;
 int glUseProgram (int ) ;
 int set_matrix_3d (float*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int time_of_day () ;

void render_players(Attrib *attrib, Player *player) {
    State *s = &player->state;
    float matrix[16];
    set_matrix_3d(
        matrix, g->width, g->height,
        s->x, s->y, s->z, s->rx, s->ry, g->fov, g->ortho, g->render_radius);
    glUseProgram(attrib->program);
    glUniformMatrix4fv(attrib->matrix, 1, GL_FALSE, matrix);
    glUniform3f(attrib->camera, s->x, s->y, s->z);
    glUniform1i(attrib->sampler, 0);
    glUniform1f(attrib->timer, time_of_day());
    for (int i = 0; i < g->player_count; i++) {
        Player *other = g->players + i;
        if (other != player) {
            draw_player(attrib, other);
        }
    }
}
