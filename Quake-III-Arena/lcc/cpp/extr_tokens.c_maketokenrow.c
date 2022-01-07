
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max; int * bp; int * lp; int * tp; } ;
typedef TYPE_1__ Tokenrow ;
typedef int Token ;


 scalar_t__ domalloc (int) ;

void
maketokenrow(int size, Tokenrow *trp)
{
 trp->max = size;
 if (size>0)
  trp->bp = (Token *)domalloc(size*sizeof(Token));
 else
  trp->bp = ((void*)0);
 trp->tp = trp->bp;
 trp->lp = trp->bp;
}
