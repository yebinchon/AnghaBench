
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ** reliste; int ** relist; } ;
typedef int Resub ;
typedef int Reprog ;
typedef TYPE_1__ Reljunk ;
typedef int Relist ;


 int BIGLISTSIZE ;
 int free (int *) ;
 int * malloc (int) ;
 int * nil ;
 int regexec1 (int const*,char*,int *,int,TYPE_1__*) ;

__attribute__((used)) static int
regexec2(const Reprog *progp,
 char *bol,
 Resub *mp,
 int ms,
 Reljunk *j
)
{
 int rv;
 Relist *relist0, *relist1;


 relist0 = malloc(BIGLISTSIZE*sizeof(Relist));
 if(relist0 == nil)
  return -1;
 relist1 = malloc(BIGLISTSIZE*sizeof(Relist));
 if(relist1 == nil){
  free(relist1);
  return -1;
 }
 j->relist[0] = relist0;
 j->relist[1] = relist1;
 j->reliste[0] = relist0 + BIGLISTSIZE - 2;
 j->reliste[1] = relist1 + BIGLISTSIZE - 2;

 rv = regexec1(progp, bol, mp, ms, j);
 free(relist0);
 free(relist1);
 return rv;
}
