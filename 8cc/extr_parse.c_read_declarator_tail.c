
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vector ;
typedef int Type ;


 scalar_t__ next_token (char) ;
 int * read_declarator_array (int *) ;
 int * read_declarator_func (int *,int *) ;

__attribute__((used)) static Type *read_declarator_tail(Type *basety, Vector *params) {
    if (next_token('['))
        return read_declarator_array(basety);
    if (next_token('('))
        return read_declarator_func(basety, params);
    return basety;
}
