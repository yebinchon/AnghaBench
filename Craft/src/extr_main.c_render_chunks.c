
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {int ortho; float render_radius; int chunk_count; TYPE_3__* chunks; int fov; int height; int width; } ;
struct TYPE_15__ {int timer; int extra4; int extra3; int extra2; int extra1; int sampler; int camera; int matrix; int program; } ;
struct TYPE_14__ {scalar_t__ faces; int maxy; int miny; int q; int p; } ;
struct TYPE_12__ {int z; int y; int x; int ry; int rx; } ;
struct TYPE_13__ {TYPE_1__ state; } ;
typedef TYPE_1__ State ;
typedef TYPE_2__ Player ;
typedef TYPE_3__ Chunk ;
typedef TYPE_4__ Attrib ;


 float CHUNK_SIZE ;
 int GL_FALSE ;
 float chunk_distance (TYPE_3__*,int,int) ;
 int chunk_visible (float**,int ,int ,int ,int ) ;
 int chunked (int ) ;
 int draw_chunk (TYPE_4__*,TYPE_3__*) ;
 int ensure_chunks (TYPE_2__*) ;
 int frustum_planes (float**,float,float*) ;
 TYPE_7__* g ;
 float get_daylight () ;
 int glUniform1f (int ,float) ;
 int glUniform1i (int ,int) ;
 int glUniform3f (int ,int ,int ,int ) ;
 int glUniformMatrix4fv (int ,int,int ,float*) ;
 int glUseProgram (int ) ;
 int set_matrix_3d (float*,int ,int ,int ,int ,int ,int ,int ,int ,int,float) ;
 float time_of_day () ;

int render_chunks(Attrib *attrib, Player *player) {
    int result = 0;
    State *s = &player->state;
    ensure_chunks(player);
    int p = chunked(s->x);
    int q = chunked(s->z);
    float light = get_daylight();
    float matrix[16];
    set_matrix_3d(
        matrix, g->width, g->height,
        s->x, s->y, s->z, s->rx, s->ry, g->fov, g->ortho, g->render_radius);
    float planes[6][4];
    frustum_planes(planes, g->render_radius, matrix);
    glUseProgram(attrib->program);
    glUniformMatrix4fv(attrib->matrix, 1, GL_FALSE, matrix);
    glUniform3f(attrib->camera, s->x, s->y, s->z);
    glUniform1i(attrib->sampler, 0);
    glUniform1i(attrib->extra1, 2);
    glUniform1f(attrib->extra2, light);
    glUniform1f(attrib->extra3, g->render_radius * CHUNK_SIZE);
    glUniform1i(attrib->extra4, g->ortho);
    glUniform1f(attrib->timer, time_of_day());
    for (int i = 0; i < g->chunk_count; i++) {
        Chunk *chunk = g->chunks + i;
        if (chunk_distance(chunk, p, q) > g->render_radius) {
            continue;
        }
        if (!chunk_visible(
            planes, chunk->p, chunk->q, chunk->miny, chunk->maxy))
        {
            continue;
        }
        draw_chunk(attrib, chunk);
        result += chunk->faces;
    }
    return result;
}
