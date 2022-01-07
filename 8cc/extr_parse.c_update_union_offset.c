
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_4__ {scalar_t__ kind; scalar_t__ bitsize; scalar_t__ bitoff; scalar_t__ offset; int align; int size; } ;
typedef TYPE_1__ Type ;
typedef int Dict ;


 scalar_t__ KIND_STRUCT ;
 int MAX (int,int ) ;
 int compute_padding (int,int) ;
 int dict_put (int *,char*,TYPE_1__*) ;
 int * make_dict () ;
 int squash_unnamed_struct (int *,TYPE_1__*,int ) ;
 void** vec_get (int *,int) ;
 int vec_len (int *) ;

__attribute__((used)) static Dict *update_union_offset(int *rsize, int *align, Vector *fields) {
    int maxsize = 0;
    Dict *r = make_dict();
    for (int i = 0; i < vec_len(fields); i++) {
        void **pair = vec_get(fields, i);
        char *name = pair[0];
        Type *fieldtype = pair[1];
        maxsize = MAX(maxsize, fieldtype->size);
        *align = MAX(*align, fieldtype->align);
        if (name == ((void*)0) && fieldtype->kind == KIND_STRUCT) {
            squash_unnamed_struct(r, fieldtype, 0);
            continue;
        }
        fieldtype->offset = 0;
        if (fieldtype->bitsize >= 0)
            fieldtype->bitoff = 0;
        if (name)
            dict_put(r, name, fieldtype);
    }
    *rsize = maxsize + compute_padding(maxsize, *align);
    return r;
}
