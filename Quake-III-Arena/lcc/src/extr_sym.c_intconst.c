
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i; } ;
typedef TYPE_1__ Value ;
typedef int Symbol ;


 int constant (int ,TYPE_1__) ;
 int inttype ;

Symbol intconst(int n) {
 Value v;

 v.i = n;
 return constant(inttype, v);
}
