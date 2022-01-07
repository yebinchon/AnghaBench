
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct bintime {int sec; } ;


 scalar_t__ NSEC_PER_SEC ;
 int bintime_subx (struct bintime*,int) ;

__attribute__((used)) static __inline void
bintime_subns(struct bintime *bt, uint64_t ns)
{
 bt->sec -= ns/ (uint64_t)NSEC_PER_SEC;
 ns = ns % (uint64_t)NSEC_PER_SEC;
 if (ns) {

  ns = ns * (uint64_t)18446744073LL;
  bintime_subx(bt, ns);
 }
}
