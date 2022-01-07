
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* Type ;
struct TYPE_9__ {int size; } ;
struct TYPE_8__ {int size; } ;
struct TYPE_7__ {int size; } ;
struct TYPE_6__ {int op; int size; struct TYPE_6__* type; } ;
 int assert (int ) ;
 TYPE_5__* funcptype ;
 TYPE_4__* inttype ;
 int const sizeop (int ) ;
 TYPE_2__* voidptype ;

int ttob(Type ty) {
 switch (ty->op) {
 case 138: case 128: case 138 +128:
  return ttob(ty->type);
 case 129: case 134: case 130: case 136:
  return ty->op + sizeop(ty->size);
 case 133:
  return 133 + sizeop(voidptype->size);
 case 135:
  return 133 + sizeop(funcptype->size);
 case 139: case 132: case 131:
  return 132;
 case 137:
  return 134 + sizeop(inttype->size);
 }
 assert(0); return 134;
}
