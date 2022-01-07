
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * syms; } ;
typedef TYPE_1__* Node ;


 scalar_t__ argoffset ;
 int intconst (scalar_t__) ;
 scalar_t__ maxargoffset ;

__attribute__((used)) static void docall(Node p) {
 p->syms[1] = p->syms[0];
 p->syms[0] = intconst(argoffset);
 if (argoffset > maxargoffset)
  maxargoffset = argoffset;
 argoffset = 0;
}
