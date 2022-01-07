
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int render_radius; int ortho; int fov; int height; int width; } ;
struct TYPE_10__ {int matrix; int program; } ;
struct TYPE_8__ {int ry; int rx; int z; int y; int x; } ;
struct TYPE_9__ {TYPE_1__ state; } ;
typedef TYPE_1__ State ;
typedef TYPE_2__ Player ;
typedef int GLuint ;
typedef TYPE_3__ Attrib ;


 int GL_COLOR_LOGIC_OP ;
 int GL_FALSE ;
 int del_buffer (int ) ;
 int draw_lines (TYPE_3__*,int ,int,int) ;
 TYPE_6__* g ;
 int gen_wireframe_buffer (int,int,int,double) ;
 int glDisable (int ) ;
 int glEnable (int ) ;
 int glLineWidth (int) ;
 int glUniformMatrix4fv (int ,int,int ,float*) ;
 int glUseProgram (int ) ;
 int hit_test (int ,int ,int ,int ,int ,int ,int*,int*,int*) ;
 scalar_t__ is_obstacle (int) ;
 int set_matrix_3d (float*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

void render_wireframe(Attrib *attrib, Player *player) {
    State *s = &player->state;
    float matrix[16];
    set_matrix_3d(
        matrix, g->width, g->height,
        s->x, s->y, s->z, s->rx, s->ry, g->fov, g->ortho, g->render_radius);
    int hx, hy, hz;
    int hw = hit_test(0, s->x, s->y, s->z, s->rx, s->ry, &hx, &hy, &hz);
    if (is_obstacle(hw)) {
        glUseProgram(attrib->program);
        glLineWidth(1);
        glEnable(GL_COLOR_LOGIC_OP);
        glUniformMatrix4fv(attrib->matrix, 1, GL_FALSE, matrix);
        GLuint wireframe_buffer = gen_wireframe_buffer(hx, hy, hz, 0.53);
        draw_lines(attrib, wireframe_buffer, 3, 24);
        del_buffer(wireframe_buffer);
        glDisable(GL_COLOR_LOGIC_OP);
    }
}
