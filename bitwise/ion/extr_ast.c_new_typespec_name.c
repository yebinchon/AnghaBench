
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t num_names; int names; } ;
typedef TYPE_1__ Typespec ;
typedef int SrcPos ;


 int AST_DUP (char const**) ;
 int TYPESPEC_NAME ;
 TYPE_1__* new_typespec (int ,int ) ;

Typespec *new_typespec_name(SrcPos pos, const char **names, size_t num_names) {
    Typespec *t = new_typespec(TYPESPEC_NAME, pos);
    t->names = AST_DUP(names);
    t->num_names = num_names;
    return t;

}
