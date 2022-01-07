
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int Type ;
typedef TYPE_1__* Tree ;
struct TYPE_6__ {int type; } ;


 int INDIR ;
 int deref (int ) ;
 int mkop (int ,int ) ;
 TYPE_1__* tree (int ,int ,TYPE_1__*,int *) ;
 int unqual (int ) ;

Tree rvalue(Tree p) {
 Type ty = deref(p->type);

 ty = unqual(ty);
 return tree(mkop(INDIR,ty), ty, p, ((void*)0));
}
