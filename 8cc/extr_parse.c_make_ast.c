
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sourceLoc; } ;
typedef TYPE_1__ Node ;


 TYPE_1__* malloc (int) ;
 int source_loc ;

__attribute__((used)) static Node *make_ast(Node *tmpl) {
    Node *r = malloc(sizeof(Node));
    *r = *tmpl;
    r->sourceLoc = source_loc;
    return r;
}
