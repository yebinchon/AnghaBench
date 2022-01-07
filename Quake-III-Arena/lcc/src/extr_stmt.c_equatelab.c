
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* equatedto; } ;
struct TYPE_7__ {TYPE_1__ l; } ;
struct TYPE_8__ {int ref; TYPE_2__ u; } ;
typedef TYPE_3__* Symbol ;


 int assert (int ) ;

void equatelab(Symbol old, Symbol new) {
 assert(old->u.l.equatedto == ((void*)0));
 old->u.l.equatedto = new;
 new->ref++;
}
