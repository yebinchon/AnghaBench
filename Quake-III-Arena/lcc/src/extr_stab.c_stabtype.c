
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sclass; scalar_t__ type; int name; } ;
typedef TYPE_1__* Symbol ;


 int N_LSYM ;
 scalar_t__ TYPEDEF ;
 int dbxtype (scalar_t__) ;
 int print (char*,int ,int ,int ) ;

void stabtype(Symbol p) {
 if (p->type) {
  if (p->sclass == 0)
   dbxtype(p->type);
  else if (p->sclass == TYPEDEF)
   print(".stabs \"%s:t%d\",%d,0,0,0\n", p->name, dbxtype(p->type), N_LSYM);
 }
}
