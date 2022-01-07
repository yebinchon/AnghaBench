
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ code; int aux; } ;
struct TYPE_14__ {TYPE_1__ i; } ;
typedef TYPE_2__ Instruction ;


 scalar_t__ IEnd ;
 int MAXOFF ;
 int assert (int) ;
 int dest (TYPE_2__*,int) ;
 int getoff (TYPE_2__*) ;
 scalar_t__ iscapture (TYPE_2__*) ;
 scalar_t__ ischeck (TYPE_2__*) ;
 scalar_t__ isjmp (TYPE_2__*) ;
 scalar_t__ ismovablecap (TYPE_2__*) ;
 int rotate (TYPE_2__*,int,int) ;
 scalar_t__ sizei (TYPE_2__*) ;
 int skipchecks (TYPE_2__*,int,int*) ;

__attribute__((used)) static void optimizecaptures (Instruction *p) {
  int i;
  int limit = 0;
  for (i = 0; p[i].i.code != IEnd; i += sizei(p + i)) {
    if (isjmp(p + i) && dest(p, i) >= limit)
      limit = dest(p, i) + 1;
    else if (i >= limit && ismovablecap(p + i) && ischeck(p + i + 1)) {
      int end, n, j;
      int maxoff = getoff(p + i);
      int start = i;

      while (start > limit && ismovablecap(p + start - 1)) {
        start--;
        if (getoff(p + start) > maxoff) maxoff = getoff(p + start);
      }
      end = skipchecks(p + i + 1, maxoff, &n) + i;
      if (n == 0) continue;
      assert(n <= MAXOFF && start <= i && i < end);
      for (j = start; j <= i; j++)
        p[j].i.aux += (n << 4);
      rotate(p + start, end - start, i - start + 1);
      i = end;
      assert(ischeck(p + start) && iscapture(p + i));
    }
  }
}
