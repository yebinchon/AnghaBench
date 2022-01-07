
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_4__ {scalar_t__ kind; } ;
typedef TYPE_1__ Token ;
typedef int Node ;


 int KSTATIC_ASSERT ;
 scalar_t__ TEOF ;
 int error (char*) ;
 scalar_t__ is_type (TYPE_1__*) ;
 int mark_location () ;
 scalar_t__ next_token (int ) ;
 TYPE_1__* peek () ;
 int read_decl (int *,int) ;
 int read_static_assert () ;
 int * read_stmt () ;
 int vec_push (int *,int *) ;

__attribute__((used)) static void read_decl_or_stmt(Vector *list) {
    Token *tok = peek();
    if (tok->kind == TEOF)
        error("premature end of input");
    mark_location();
    if (is_type(tok)) {
        read_decl(list, 0);
    } else if (next_token(KSTATIC_ASSERT)) {
        read_static_assert();
    } else {
        Node *stmt = read_stmt();
        if (stmt)
            vec_push(list, stmt);
    }
}
