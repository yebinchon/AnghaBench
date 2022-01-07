
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Type ;
typedef int Token ;
struct TYPE_2__ {int * ty; } ;


 int expect (char) ;
 int * get () ;
 scalar_t__ is_keyword (int *,char) ;
 scalar_t__ is_type (int ) ;
 int peek () ;
 int * read_cast_type () ;
 TYPE_1__* read_unary_expr () ;
 int unget_token (int *) ;

__attribute__((used)) static Type *read_sizeof_operand_sub() {
    Token *tok = get();
    if (is_keyword(tok, '(') && is_type(peek())) {
        Type *r = read_cast_type();
        expect(')');
        return r;
    }
    unget_token(tok);
    return read_unary_expr()->ty;
}
