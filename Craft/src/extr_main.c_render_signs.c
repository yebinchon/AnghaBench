
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int chunk_count; scalar_t__ sign_radius; TYPE_3__* chunks; int render_radius; int ortho; int fov; int height; int width; } ;
struct TYPE_14__ {int extra1; int sampler; int matrix; int program; } ;
struct TYPE_13__ {int maxy; int miny; int q; int p; } ;
struct TYPE_11__ {int ry; int rx; int z; int y; int x; } ;
struct TYPE_12__ {TYPE_1__ state; } ;
typedef TYPE_1__ State ;
typedef TYPE_2__ Player ;
typedef TYPE_3__ Chunk ;
typedef TYPE_4__ Attrib ;


 int GL_FALSE ;
 scalar_t__ chunk_distance (TYPE_3__*,int,int) ;
 int chunk_visible (float**,int ,int ,int ,int ) ;
 int chunked (int ) ;
 int draw_signs (TYPE_4__*,TYPE_3__*) ;
 int frustum_planes (float**,int ,float*) ;
 TYPE_7__* g ;
 int glUniform1i (int ,int) ;
 int glUniformMatrix4fv (int ,int,int ,float*) ;
 int glUseProgram (int ) ;
 int set_matrix_3d (float*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

void render_signs(Attrib *attrib, Player *player) {
    State *s = &player->state;
    int p = chunked(s->x);
    int q = chunked(s->z);
    float matrix[16];
    set_matrix_3d(
        matrix, g->width, g->height,
        s->x, s->y, s->z, s->rx, s->ry, g->fov, g->ortho, g->render_radius);
    float planes[6][4];
    frustum_planes(planes, g->render_radius, matrix);
    glUseProgram(attrib->program);
    glUniformMatrix4fv(attrib->matrix, 1, GL_FALSE, matrix);
    glUniform1i(attrib->sampler, 3);
    glUniform1i(attrib->extra1, 1);
    for (int i = 0; i < g->chunk_count; i++) {
        Chunk *chunk = g->chunks + i;
        if (chunk_distance(chunk, p, q) > g->sign_radius) {
            continue;
        }
        if (!chunk_visible(
            planes, chunk->p, chunk->q, chunk->miny, chunk->maxy))
        {
            continue;
        }
        draw_signs(attrib, chunk);
    }
}
