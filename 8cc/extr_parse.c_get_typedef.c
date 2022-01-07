
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Type ;
struct TYPE_3__ {scalar_t__ kind; int * ty; } ;
typedef TYPE_1__ Node ;


 scalar_t__ AST_TYPEDEF ;
 int env () ;
 TYPE_1__* map_get (int ,char*) ;

__attribute__((used)) static Type *get_typedef(char *name) {
    Node *node = map_get(env(), name);
    return (node && node->kind == AST_TYPEDEF) ? node->ty : ((void*)0);
}
