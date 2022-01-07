
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* Tree ;
struct TYPE_9__ {int type; } ;


 int cond (TYPE_1__*) ;
 int inttype ;
 int isscalar (int ) ;
 TYPE_1__* simplify (int,int ,int ,int ) ;
 int typeerror (int,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static Tree andtree(int op, Tree l, Tree r) {
 if (!isscalar(l->type) || !isscalar(r->type))
  typeerror(op, l, r);
 return simplify(op, inttype, cond(l), cond(r));
}
