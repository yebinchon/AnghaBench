
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int hideset; scalar_t__ type; struct TYPE_18__* bp; struct TYPE_18__* tp; struct TYPE_18__* lp; } ;
typedef TYPE_1__ Tokenrow ;
typedef TYPE_1__ Token ;
struct TYPE_19__ {TYPE_1__* ap; int vp; } ;
typedef TYPE_3__ Nlist ;


 int ERROR ;
 scalar_t__ NAME ;
 int NARG ;
 int copytokenrow (TYPE_1__*,int ) ;
 int doconcat (TYPE_1__*) ;
 int dofree (TYPE_1__*) ;
 int error (int ,char*) ;
 int gatherargs (TYPE_1__*,TYPE_1__**,int*) ;
 int insertrow (TYPE_1__*,int,TYPE_1__*) ;
 void* newhideset (int,TYPE_3__*) ;
 int rowlen (TYPE_1__*) ;
 int substargs (TYPE_3__*,TYPE_1__*,TYPE_1__**) ;
 int unionhideset (int,int) ;

void
expand(Tokenrow *trp, Nlist *np)
{
 Tokenrow ntr;
 int ntokc, narg, i;
 Token *tp;
 Tokenrow *atr[NARG+1];
 int hs;

 copytokenrow(&ntr, np->vp);
 if (np->ap==((void*)0))
  ntokc = 1;
 else {
  ntokc = gatherargs(trp, atr, &narg);
  if (narg<0) {
   trp->tp++;
   return;
  }
  if (narg != rowlen(np->ap)) {
   error(ERROR, "Disagreement in number of macro arguments");
   trp->tp->hideset = newhideset(trp->tp->hideset, np);
   trp->tp += ntokc;
   return;
  }
  substargs(np, &ntr, atr);
  for (i=0; i<narg; i++) {
   dofree(atr[i]->bp);
   dofree(atr[i]);
  }
 }
 doconcat(&ntr);
 hs = newhideset(trp->tp->hideset, np);
 for (tp=ntr.bp; tp<ntr.lp; tp++) {
  if (tp->type==NAME) {
   if (tp->hideset==0)
    tp->hideset = hs;
   else
    tp->hideset = unionhideset(tp->hideset, hs);
  }
 }
 ntr.tp = ntr.bp;
 insertrow(trp, ntokc, &ntr);
 trp->tp -= rowlen(&ntr);
 dofree(ntr.bp);
 return;
}
