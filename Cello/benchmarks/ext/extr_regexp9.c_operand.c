
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int r; int cp; } ;
struct TYPE_7__ {TYPE_1__ u1; } ;
typedef TYPE_2__ Reinst ;


 int CAT ;
 int CCLASS ;
 int NCCLASS ;
 int RUNE ;
 scalar_t__ TRUE ;
 scalar_t__ lastwasand ;
 TYPE_2__* newinst (int) ;
 int operator (int ) ;
 int pushand (TYPE_2__*,TYPE_2__*) ;
 int yyclassp ;
 int yyrune ;

__attribute__((used)) static void
operand(int t)
{
 Reinst *i;

 if(lastwasand)
  operator(CAT);
 i = newinst(t);

 if(t == CCLASS || t == NCCLASS)
  i->u1.cp = yyclassp;
 if(t == RUNE)
  i->u1.r = yyrune;

 pushand(i, i);
 lastwasand = TRUE;
}
