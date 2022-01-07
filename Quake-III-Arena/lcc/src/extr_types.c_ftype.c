
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Type ;
typedef int * List ;


 int PERM ;
 int * append (int ,int *) ;
 int func (int ,int ,int ) ;
 int ltov (int **,int ) ;
 int voidtype ;

Type ftype(Type rty, Type ty) {
 List list = append(ty, ((void*)0));

 list = append(voidtype, list);
 return func(rty, ltov(&list, PERM), 0);
}
