
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dirty; int signs; } ;
typedef int SignList ;
typedef TYPE_1__ Chunk ;


 int chunked (int) ;
 int db_delete_signs (int,int,int) ;
 TYPE_1__* find_chunk (int,int) ;
 scalar_t__ sign_list_remove_all (int *,int,int,int) ;

void unset_sign(int x, int y, int z) {
    int p = chunked(x);
    int q = chunked(z);
    Chunk *chunk = find_chunk(p, q);
    if (chunk) {
        SignList *signs = &chunk->signs;
        if (sign_list_remove_all(signs, x, y, z)) {
            chunk->dirty = 1;
            db_delete_signs(x, y, z);
        }
    }
    else {
        db_delete_signs(x, y, z);
    }
}
