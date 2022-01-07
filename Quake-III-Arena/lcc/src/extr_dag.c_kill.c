
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__** kids; int op; } ;
struct dag {struct dag* hlink; TYPE_2__ node; } ;
struct TYPE_3__ {scalar_t__* syms; int op; } ;
typedef scalar_t__ Symbol ;


 scalar_t__ INDIR ;
 int NELEMS (struct dag**) ;
 struct dag** buckets ;
 scalar_t__ generic (int ) ;
 int isaddrop (int ) ;
 int nodecount ;

__attribute__((used)) static void kill(Symbol p) {
 int i;
 struct dag **q;

 for (i = 0; i < NELEMS(buckets); i++)
  for (q = &buckets[i]; *q; )
   if (generic((*q)->node.op) == INDIR &&
       (!isaddrop((*q)->node.kids[0]->op)
        || (*q)->node.kids[0]->syms[0] == p)) {
    *q = (*q)->hlink;
    --nodecount;
   } else
    q = &(*q)->hlink;
}
