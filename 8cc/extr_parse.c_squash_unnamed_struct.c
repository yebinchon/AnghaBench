
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_5__ {int offset; int fields; } ;
typedef TYPE_1__ Type ;
typedef int Dict ;


 TYPE_1__* copy_type (int ) ;
 int dict_get (int ,char*) ;
 int * dict_keys (int ) ;
 int dict_put (int *,char*,TYPE_1__*) ;
 char* vec_get (int *,int) ;
 int vec_len (int *) ;

__attribute__((used)) static void squash_unnamed_struct(Dict *dict, Type *unnamed, int offset) {
    Vector *keys = dict_keys(unnamed->fields);
    for (int i = 0; i < vec_len(keys); i++) {
        char *name = vec_get(keys, i);
        Type *t = copy_type(dict_get(unnamed->fields, name));
        t->offset += offset;
        dict_put(dict, name, t);
    }
}
