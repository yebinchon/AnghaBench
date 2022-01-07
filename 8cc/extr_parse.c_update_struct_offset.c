
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_4__ {int align; scalar_t__ kind; int size; scalar_t__ bitsize; int offset; int bitoff; } ;
typedef TYPE_1__ Type ;
typedef int Dict ;


 scalar_t__ KIND_STRUCT ;
 int MAX (int,int) ;
 int compute_padding (int,int) ;
 int dict_put (int *,char*,TYPE_1__*) ;
 int finish_bitfield (int*,int*) ;
 int * make_dict () ;
 int squash_unnamed_struct (int *,TYPE_1__*,int) ;
 void** vec_get (int *,int) ;
 int vec_len (int *) ;

__attribute__((used)) static Dict *update_struct_offset(int *rsize, int *align, Vector *fields) {
    int off = 0, bitoff = 0;
    Dict *r = make_dict();
    for (int i = 0; i < vec_len(fields); i++) {
        void **pair = vec_get(fields, i);
        char *name = pair[0];
        Type *fieldtype = pair[1];




        if (name)
            *align = MAX(*align, fieldtype->align);

        if (name == ((void*)0) && fieldtype->kind == KIND_STRUCT) {

            finish_bitfield(&off, &bitoff);
            off += compute_padding(off, fieldtype->align);
            squash_unnamed_struct(r, fieldtype, off);
            off += fieldtype->size;
            continue;
        }
        if (fieldtype->bitsize == 0) {


            finish_bitfield(&off, &bitoff);
            off += compute_padding(off, fieldtype->align);
            bitoff = 0;
            continue;
        }
        if (fieldtype->bitsize > 0) {
            int bit = fieldtype->size * 8;
            int room = bit - (off * 8 + bitoff) % bit;
            if (fieldtype->bitsize <= room) {
                fieldtype->offset = off;
                fieldtype->bitoff = bitoff;
            } else {
                finish_bitfield(&off, &bitoff);
                off += compute_padding(off, fieldtype->align);
                fieldtype->offset = off;
                fieldtype->bitoff = 0;
            }
            bitoff += fieldtype->bitsize;
        } else {
            finish_bitfield(&off, &bitoff);
            off += compute_padding(off, fieldtype->align);
            fieldtype->offset = off;
            off += fieldtype->size;
        }
        if (name)
            dict_put(r, name, fieldtype);
    }
    finish_bitfield(&off, &bitoff);
    *rsize = off + compute_padding(off, *align);
    return r;
}
