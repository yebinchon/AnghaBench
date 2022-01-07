
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pos; } ;
typedef int SrcPos ;
typedef int Decl ;


 int DECL_STRUCT ;
 int DECL_UNION ;
 int TOKEN_POUND ;
 int const_keyword ;
 int enum_keyword ;
 int func_keyword ;
 int import_keyword ;
 scalar_t__ match_keyword (int ) ;
 scalar_t__ match_token (int ) ;
 int * parse_decl_aggregate (int ,int ) ;
 int * parse_decl_const (int ) ;
 int * parse_decl_enum (int ) ;
 int * parse_decl_func (int ) ;
 int * parse_decl_import (int ) ;
 int * parse_decl_note (int ) ;
 int * parse_decl_typedef (int ) ;
 int * parse_decl_var (int ) ;
 int struct_keyword ;
 TYPE_1__ token ;
 int typedef_keyword ;
 int union_keyword ;
 int var_keyword ;

Decl *parse_decl_opt(void) {
    SrcPos pos = token.pos;
    if (match_keyword(enum_keyword)) {
        return parse_decl_enum(pos);
    } else if (match_keyword(struct_keyword)) {
        return parse_decl_aggregate(pos, DECL_STRUCT);
    } else if (match_keyword(union_keyword)) {
        return parse_decl_aggregate(pos, DECL_UNION);
    } else if (match_keyword(const_keyword)) {
        return parse_decl_const(pos);
    } else if (match_keyword(typedef_keyword)) {
        return parse_decl_typedef(pos);
    } else if (match_keyword(func_keyword)) {
        return parse_decl_func(pos);
    } else if (match_keyword(var_keyword)) {
        return parse_decl_var(pos);
    } else if (match_keyword(import_keyword)) {
        return parse_decl_import(pos);
    } else if (match_token(TOKEN_POUND)) {
        return parse_decl_note(pos);
    } else {
        return ((void*)0);
    }
}
