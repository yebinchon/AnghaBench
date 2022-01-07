
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int chunk_count; int observe1; int observe2; scalar_t__ delete_radius; TYPE_3__* chunks; TYPE_1__* players; } ;
struct TYPE_10__ {int sign_buffer; int buffer; int signs; int lights; int map; } ;
struct TYPE_9__ {int z; int x; } ;
struct TYPE_8__ {TYPE_2__ state; } ;
typedef TYPE_2__ State ;
typedef TYPE_3__ Chunk ;


 scalar_t__ chunk_distance (TYPE_3__*,int,int) ;
 int chunked (int ) ;
 int del_buffer (int ) ;
 TYPE_6__* g ;
 int map_free (int *) ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;
 int sign_list_free (int *) ;

void delete_chunks() {
    int count = g->chunk_count;
    State *s1 = &g->players->state;
    State *s2 = &(g->players + g->observe1)->state;
    State *s3 = &(g->players + g->observe2)->state;
    State *states[3] = {s1, s2, s3};
    for (int i = 0; i < count; i++) {
        Chunk *chunk = g->chunks + i;
        int delete = 1;
        for (int j = 0; j < 3; j++) {
            State *s = states[j];
            int p = chunked(s->x);
            int q = chunked(s->z);
            if (chunk_distance(chunk, p, q) < g->delete_radius) {
                delete = 0;
                break;
            }
        }
        if (delete) {
            map_free(&chunk->map);
            map_free(&chunk->lights);
            sign_list_free(&chunk->signs);
            del_buffer(chunk->buffer);
            del_buffer(chunk->sign_buffer);
            Chunk *other = g->chunks + (--count);
            memcpy(chunk, other, sizeof(Chunk));
        }
    }
    g->chunk_count = count;
}
