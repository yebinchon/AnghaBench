
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pos; } ;
typedef int SrcPos ;
typedef int AggregateKind ;
typedef int AggregateItem ;
typedef int Aggregate ;


 int TOKEN_LBRACE ;
 int TOKEN_RBRACE ;
 int buf_len (int *) ;
 int buf_push (int *,int ) ;
 int expect_token (int ) ;
 int is_token (int ) ;
 int is_token_eof () ;
 int * new_aggregate (int ,int ,int *,int ) ;
 int parse_decl_aggregate_item () ;
 TYPE_1__ token ;

Aggregate *parse_aggregate(AggregateKind kind) {
    SrcPos pos = token.pos;
    expect_token(TOKEN_LBRACE);
    AggregateItem *items = ((void*)0);
    while (!is_token_eof() && !is_token(TOKEN_RBRACE)) {
        buf_push(items, parse_decl_aggregate_item());
    }
    expect_token(TOKEN_RBRACE);
    return new_aggregate(pos, kind, items, buf_len(items));
}
