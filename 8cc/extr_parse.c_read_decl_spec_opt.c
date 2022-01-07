
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Type ;


 scalar_t__ is_type (int ) ;
 int peek () ;
 int * read_decl_spec (int*) ;
 int * type_int ;
 int warnt (int ,char*) ;

__attribute__((used)) static Type *read_decl_spec_opt(int *sclass) {
    if (is_type(peek()))
        return read_decl_spec(sclass);
    warnt(peek(), "type specifier missing, assuming int");
    return type_int;
}
