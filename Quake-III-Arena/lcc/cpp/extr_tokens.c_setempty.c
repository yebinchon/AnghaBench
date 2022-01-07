
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * bp; int * lp; int * tp; } ;
typedef TYPE_1__ Tokenrow ;


 int nltoken ;

void
setempty(Tokenrow *trp)
{
 trp->tp = trp->bp;
 trp->lp = trp->bp+1;
 *trp->bp = nltoken;
}
