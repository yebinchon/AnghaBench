
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t num_fields; int fields; } ;
struct TYPE_8__ {TYPE_1__ tuple; } ;
typedef TYPE_2__ Typespec ;
typedef int SrcPos ;


 int AST_DUP (TYPE_2__**) ;
 int TYPESPEC_TUPLE ;
 TYPE_2__* new_typespec (int ,int ) ;

Typespec *new_typespec_tuple(SrcPos pos, Typespec **fields, size_t num_fields) {
    Typespec *t = new_typespec(TYPESPEC_TUPLE, pos);
    t->tuple.fields = AST_DUP(fields);
    t->tuple.num_fields = num_fields;
    return t;
}
