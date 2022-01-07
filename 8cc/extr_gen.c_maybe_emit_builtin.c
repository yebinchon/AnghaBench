
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fname; } ;
typedef TYPE_1__ Node ;


 int SAVE ;
 int emit_builtin_reg_class (TYPE_1__*) ;
 int emit_builtin_return_address (TYPE_1__*) ;
 int emit_builtin_va_start (TYPE_1__*) ;
 int strcmp (char*,int ) ;

__attribute__((used)) static bool maybe_emit_builtin(Node *node) {
    SAVE;
    if (!strcmp("__builtin_return_address", node->fname)) {
        emit_builtin_return_address(node);
        return 1;
    }
    if (!strcmp("__builtin_reg_class", node->fname)) {
        emit_builtin_reg_class(node);
        return 1;
    }
    if (!strcmp("__builtin_va_start", node->fname)) {
        emit_builtin_va_start(node);
        return 1;
    }
    return 0;
}
