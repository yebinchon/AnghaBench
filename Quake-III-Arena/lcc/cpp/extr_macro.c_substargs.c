
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {TYPE_2__* tp; TYPE_2__* bp; TYPE_2__* lp; } ;
typedef TYPE_1__ Tokenrow ;
struct TYPE_15__ {scalar_t__ type; } ;
typedef TYPE_2__ Token ;
typedef int Nlist ;


 scalar_t__ DSHARP ;
 int ERROR ;
 scalar_t__ NAME ;
 scalar_t__ SHARP ;
 int copytokenrow (TYPE_1__*,TYPE_1__*) ;
 int dofree (TYPE_2__*) ;
 int error (int ,char*) ;
 int expandrow (TYPE_1__*,char*) ;
 int insertrow (TYPE_1__*,int,TYPE_1__*) ;
 int lookuparg (int *,TYPE_2__*) ;
 TYPE_1__* stringify (TYPE_1__*) ;

void
substargs(Nlist *np, Tokenrow *rtr, Tokenrow **atr)
{
 Tokenrow tatr;
 Token *tp;
 int ntok, argno;

 for (rtr->tp=rtr->bp; rtr->tp<rtr->lp; ) {
  if (rtr->tp->type==SHARP) {
   tp = rtr->tp;
   rtr->tp += 1;
   if ((argno = lookuparg(np, rtr->tp))<0) {
    error(ERROR, "# not followed by macro parameter");
    continue;
   }
   ntok = 1 + (rtr->tp - tp);
   rtr->tp = tp;
   insertrow(rtr, ntok, stringify(atr[argno]));
   continue;
  }
  if (rtr->tp->type==NAME
   && (argno = lookuparg(np, rtr->tp)) >= 0) {
   if ((rtr->tp+1)->type==DSHARP
    || rtr->tp!=rtr->bp && (rtr->tp-1)->type==DSHARP)
    insertrow(rtr, 1, atr[argno]);
   else {
    copytokenrow(&tatr, atr[argno]);
    expandrow(&tatr, "<macro>");
    insertrow(rtr, 1, &tatr);
    dofree(tatr.bp);
   }
   continue;
  }
  rtr->tp++;
 }
}
