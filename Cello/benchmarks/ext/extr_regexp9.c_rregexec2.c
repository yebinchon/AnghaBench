
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ** reliste; int ** relist; } ;
typedef int Rune ;
typedef int Resub ;
typedef int Reprog ;
typedef TYPE_1__ Reljunk ;
typedef int Relist ;


 int LISTSIZE ;
 int nelem (int *) ;
 int rregexec1 (int const*,int *,int *,int,TYPE_1__*) ;

__attribute__((used)) static int
rregexec2(const Reprog *progp,
 Rune *bol,
 Resub *mp,
 int ms,
 Reljunk *j
)
{
 Relist relist0[5*LISTSIZE], relist1[5*LISTSIZE];


 j->relist[0] = relist0;
 j->relist[1] = relist1;
 j->reliste[0] = relist0 + nelem(relist0) - 2;
 j->reliste[1] = relist1 + nelem(relist1) - 2;

 return rregexec1(progp, bol, mp, ms, j);
}
