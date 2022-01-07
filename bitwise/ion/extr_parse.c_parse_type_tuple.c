
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Typespec ;
struct TYPE_2__ {int pos; } ;
typedef int SrcPos ;


 int TOKEN_COMMA ;
 int TOKEN_RBRACE ;
 int buf_len (int **) ;
 int buf_push (int **,int *) ;
 int expect_token (int ) ;
 int is_token (int ) ;
 int match_token (int ) ;
 int * new_typespec_tuple (int ,int **,int ) ;
 int * parse_type () ;
 TYPE_1__ token ;

Typespec *parse_type_tuple(void) {
    SrcPos pos = token.pos;
    Typespec **fields = ((void*)0);
    while (!is_token(TOKEN_RBRACE)) {
        Typespec *field = parse_type();
        buf_push(fields, field);
        if (!match_token(TOKEN_COMMA)) {
            break;
        }
    }
    expect_token(TOKEN_RBRACE);
    return new_typespec_tuple(pos, fields, buf_len(fields));
}
