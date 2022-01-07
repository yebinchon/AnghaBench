
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int Type ;
struct TYPE_3__ {int align; int size; } ;
struct TYPE_4__ {TYPE_1__ ptrmetric; } ;


 TYPE_2__* IR ;
 int POINTER ;
 int pointersym ;
 int type (int ,int ,int ,int ,int ) ;

Type ptr(Type ty) {
 return type(POINTER, ty, IR->ptrmetric.size,
  IR->ptrmetric.align, pointersym);
}
