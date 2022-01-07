
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_3__* Type ;
struct TYPE_12__ {int oldstyle; TYPE_3__** proto; } ;
struct TYPE_13__ {TYPE_1__ f; } ;
struct TYPE_14__ {TYPE_2__ u; } ;


 int FUNCTION ;
 int error (char*,TYPE_3__*) ;
 scalar_t__ isarray (TYPE_3__*) ;
 scalar_t__ isfunc (TYPE_3__*) ;
 TYPE_3__* type (int ,TYPE_3__*,int ,int ,int *) ;

Type func(Type ty, Type *proto, int style) {
 if (ty && (isarray(ty) || isfunc(ty)))
  error("illegal return type `%t'\n", ty);
 ty = type(FUNCTION, ty, 0, 0, ((void*)0));
 ty->u.f.proto = proto;
 ty->u.f.oldstyle = style;
 return ty;
}
