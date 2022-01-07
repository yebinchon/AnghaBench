
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Type ;


 int * read_abstract_declarator (int ) ;
 int read_decl_spec (int *) ;

__attribute__((used)) static Type *read_cast_type() {
    return read_abstract_declarator(read_decl_spec(((void*)0)));
}
