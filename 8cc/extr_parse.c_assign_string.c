
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_3__ {int len; int size; } ;
typedef TYPE_1__ Type ;


 int ast_init (int ,int ,int) ;
 int ast_inttype (int ,int ) ;
 int strlen (char*) ;
 int type_char ;
 int vec_push (int *,int ) ;

__attribute__((used)) static void assign_string(Vector *inits, Type *ty, char *p, int off) {
    if (ty->len == -1)
        ty->len = ty->size = strlen(p) + 1;
    int i = 0;
    for (; i < ty->len && *p; i++)
        vec_push(inits, ast_init(ast_inttype(type_char, *p++), type_char, off + i));
    for (; i < ty->len; i++)
        vec_push(inits, ast_init(ast_inttype(type_char, 0), type_char, off + i));
}
