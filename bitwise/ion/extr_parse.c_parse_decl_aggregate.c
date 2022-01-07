
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int is_incomplete; } ;
typedef int SrcPos ;
typedef scalar_t__ DeclKind ;
typedef TYPE_1__ Decl ;
typedef int AggregateKind ;


 int AGGREGATE_STRUCT ;
 int AGGREGATE_UNION ;
 scalar_t__ DECL_STRUCT ;
 scalar_t__ DECL_UNION ;
 int TOKEN_SEMICOLON ;
 int assert (int) ;
 scalar_t__ match_token (int ) ;
 int new_aggregate (int ,int ,int *,int ) ;
 TYPE_1__* new_decl_aggregate (int ,scalar_t__,char const*,int ) ;
 int parse_aggregate (int ) ;
 char* parse_name () ;

Decl *parse_decl_aggregate(SrcPos pos, DeclKind kind) {
    assert(kind == DECL_STRUCT || kind == DECL_UNION);
    const char *name = parse_name();
    AggregateKind aggregate_kind = kind == DECL_STRUCT ? AGGREGATE_STRUCT : AGGREGATE_UNION;
    if (match_token(TOKEN_SEMICOLON)) {
        Decl *decl = new_decl_aggregate(pos, kind, name, new_aggregate(pos, aggregate_kind, ((void*)0), 0));
        decl->is_incomplete = 1;
        return decl;
    } else {
        return new_decl_aggregate(pos, kind, name, parse_aggregate(aggregate_kind));
    }
}
