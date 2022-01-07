
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int chunk_count; TYPE_1__* chunks; } ;
struct TYPE_3__ {int sign_buffer; int buffer; int signs; int lights; int map; } ;
typedef TYPE_1__ Chunk ;


 int del_buffer (int ) ;
 TYPE_2__* g ;
 int map_free (int *) ;
 int sign_list_free (int *) ;

void delete_all_chunks() {
    for (int i = 0; i < g->chunk_count; i++) {
        Chunk *chunk = g->chunks + i;
        map_free(&chunk->map);
        map_free(&chunk->lights);
        sign_list_free(&chunk->signs);
        del_buffer(chunk->buffer);
        del_buffer(chunk->sign_buffer);
    }
    g->chunk_count = 0;
}
