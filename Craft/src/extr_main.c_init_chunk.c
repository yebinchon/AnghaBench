
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int p; int q; int lights; int map; int signs; scalar_t__ sign_buffer; scalar_t__ buffer; scalar_t__ sign_faces; scalar_t__ faces; } ;
typedef int SignList ;
typedef int Map ;
typedef TYPE_1__ Chunk ;


 int CHUNK_SIZE ;
 int db_load_signs (int *,int,int) ;
 int dirty_chunk (TYPE_1__*) ;
 int map_alloc (int *,int,int,int,int) ;
 int sign_list_alloc (int *,int) ;

void init_chunk(Chunk *chunk, int p, int q) {
    chunk->p = p;
    chunk->q = q;
    chunk->faces = 0;
    chunk->sign_faces = 0;
    chunk->buffer = 0;
    chunk->sign_buffer = 0;
    dirty_chunk(chunk);
    SignList *signs = &chunk->signs;
    sign_list_alloc(signs, 16);
    db_load_signs(signs, p, q);
    Map *block_map = &chunk->map;
    Map *light_map = &chunk->lights;
    int dx = p * CHUNK_SIZE - 1;
    int dy = 0;
    int dz = q * CHUNK_SIZE - 1;
    map_alloc(block_map, dx, dy, dz, 0x7fff);
    map_alloc(light_map, dx, dy, dz, 0xf);
}
