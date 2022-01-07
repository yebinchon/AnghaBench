
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; TYPE_2__* data; } ;
struct TYPE_7__ {int sign_faces; int sign_buffer; TYPE_1__ signs; } ;
struct TYPE_6__ {int text; int face; int z; int y; int x; } ;
typedef TYPE_1__ SignList ;
typedef TYPE_2__ Sign ;
typedef int GLfloat ;
typedef TYPE_3__ Chunk ;


 scalar_t__ _gen_sign_buffer (int *,int ,int ,int ,int ,int ) ;
 int del_buffer (int ) ;
 int gen_faces (int,int,int *) ;
 int * malloc_faces (int,int) ;
 scalar_t__ strlen (int ) ;

void gen_sign_buffer(Chunk *chunk) {
    SignList *signs = &chunk->signs;


    int max_faces = 0;
    for (int i = 0; i < signs->size; i++) {
        Sign *e = signs->data + i;
        max_faces += strlen(e->text);
    }


    GLfloat *data = malloc_faces(5, max_faces);
    int faces = 0;
    for (int i = 0; i < signs->size; i++) {
        Sign *e = signs->data + i;
        faces += _gen_sign_buffer(
            data + faces * 30, e->x, e->y, e->z, e->face, e->text);
    }

    del_buffer(chunk->sign_buffer);
    chunk->sign_buffer = gen_faces(5, faces, data);
    chunk->sign_faces = faces;
}
