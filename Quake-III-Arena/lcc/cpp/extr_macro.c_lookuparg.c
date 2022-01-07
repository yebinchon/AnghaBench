
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; scalar_t__ len; scalar_t__ t; } ;
typedef TYPE_2__ Token ;
struct TYPE_8__ {TYPE_1__* ap; } ;
struct TYPE_6__ {TYPE_2__* bp; TYPE_2__* lp; } ;
typedef TYPE_3__ Nlist ;


 scalar_t__ NAME ;
 scalar_t__ strncmp (char*,char*,scalar_t__) ;

int
lookuparg(Nlist *mac, Token *tp)
{
 Token *ap;

 if (tp->type!=NAME || mac->ap==((void*)0))
  return -1;
 for (ap=mac->ap->bp; ap<mac->ap->lp; ap++) {
  if (ap->len==tp->len && strncmp((char*)ap->t,(char*)tp->t,ap->len)==0)
   return ap - mac->ap->bp;
 }
 return -1;
}
