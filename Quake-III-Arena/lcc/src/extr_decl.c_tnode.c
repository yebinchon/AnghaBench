
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* Type ;
struct TYPE_5__ {int op; struct TYPE_5__* type; } ;


 int NEW0 (TYPE_1__*,int ) ;
 int STMT ;

__attribute__((used)) static Type tnode(int op, Type type) {
 Type ty;

 NEW0(ty, STMT);
 ty->op = op;
 ty->type = type;
 return ty;
}
