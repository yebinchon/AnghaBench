
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ kind; } ;
typedef TYPE_1__ Typespec ;


 int TOKEN_COLON ;
 scalar_t__ TYPESPEC_NAME ;
 int error_here (char*) ;
 scalar_t__ match_token (int ) ;
 TYPE_1__* parse_type () ;

Typespec *parse_type_func_param(void) {
    Typespec *type = parse_type();
    if (match_token(TOKEN_COLON)) {
        if (type->kind != TYPESPEC_NAME) {
            error_here("Colons in parameters of func types must be preceded by names.");
        }
        type = parse_type();
    }
    return type;
}
