
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int data; int faces; int maxy; int miny; } ;
typedef TYPE_1__ WorkerItem ;
struct TYPE_7__ {int buffer; int faces; int maxy; int miny; } ;
typedef TYPE_2__ Chunk ;


 int del_buffer (int ) ;
 int gen_faces (int,int ,int ) ;
 int gen_sign_buffer (TYPE_2__*) ;

void generate_chunk(Chunk *chunk, WorkerItem *item) {
    chunk->miny = item->miny;
    chunk->maxy = item->maxy;
    chunk->faces = item->faces;
    del_buffer(chunk->buffer);
    chunk->buffer = gen_faces(10, item->faces, item->data);
    gen_sign_buffer(chunk);
}
