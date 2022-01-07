
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ty; } ;
typedef TYPE_1__ Node ;


 int error (char*,int ) ;
 int is_arithtype (int ) ;
 int node2s (TYPE_1__*) ;

__attribute__((used)) static void ensure_arithtype(Node *node) {
    if (!is_arithtype(node->ty))
        error("arithmetic type expected, but got %s", node2s(node));
}
