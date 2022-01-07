
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * syms; } ;
typedef int Symbol ;
typedef TYPE_1__* Node ;


 size_t RX ;

void setreg(Node p, Symbol r) {
 p->syms[RX] = r;
}
