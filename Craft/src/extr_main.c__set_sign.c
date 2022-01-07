
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dirty; int signs; } ;
typedef int SignList ;
typedef TYPE_1__ Chunk ;


 int db_insert_sign (int,int,int,int,int,int,char const*) ;
 TYPE_1__* find_chunk (int,int) ;
 int sign_list_add (int *,int,int,int,int,char const*) ;
 scalar_t__ strlen (char const*) ;
 int unset_sign_face (int,int,int,int) ;

void _set_sign(
    int p, int q, int x, int y, int z, int face, const char *text, int dirty)
{
    if (strlen(text) == 0) {
        unset_sign_face(x, y, z, face);
        return;
    }
    Chunk *chunk = find_chunk(p, q);
    if (chunk) {
        SignList *signs = &chunk->signs;
        sign_list_add(signs, x, y, z, face, text);
        if (dirty) {
            chunk->dirty = 1;
        }
    }
    db_insert_sign(p, q, x, y, z, face, text);
}
