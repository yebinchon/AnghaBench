
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* Tree ;
struct TYPE_6__ {int type; } ;


 int atop (int ) ;
 scalar_t__ isarray (int ) ;
 scalar_t__ isfunc (int ) ;
 int ptr (int ) ;
 TYPE_1__* retype (TYPE_1__*,int ) ;

Tree pointer(Tree p) {
 if (isarray(p->type))

  p = retype(p, atop(p->type));
 else if (isfunc(p->type))
  p = retype(p, ptr(p->type));
 return p;
}
