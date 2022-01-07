
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rusage {scalar_t__ ru_maxrss; long ru_first; long ru_last; int ru_stime; int ru_utime; } ;


 int timeradd (int *,int *,int *) ;

void
ruadd(struct rusage *ru, struct rusage *ru2)
{
 long *ip, *ip2;
 long i;

 timeradd(&ru->ru_utime, &ru2->ru_utime, &ru->ru_utime);
 timeradd(&ru->ru_stime, &ru2->ru_stime, &ru->ru_stime);
 if (ru->ru_maxrss < ru2->ru_maxrss)
  ru->ru_maxrss = ru2->ru_maxrss;
 ip = &ru->ru_first; ip2 = &ru2->ru_first;
 for (i = &ru->ru_last - &ru->ru_first; i >= 0; i--)
  *ip++ += *ip2++;
}
