
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vector ;
typedef int Dict ;


 int fix_rectype_flexible_member (int *) ;
 int next_token (char) ;
 int * read_rectype_fields_sub () ;
 int * update_struct_offset (int*,int*,int *) ;
 int * update_union_offset (int*,int*,int *) ;

__attribute__((used)) static Dict *read_rectype_fields(int *rsize, int *align, bool is_struct) {
    if (!next_token('{'))
        return ((void*)0);
    Vector *fields = read_rectype_fields_sub();
    fix_rectype_flexible_member(fields);
    if (is_struct)
        return update_struct_offset(rsize, align, fields);
    return update_union_offset(rsize, align, fields);
}
