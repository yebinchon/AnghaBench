
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct bintime {int dummy; } ;
typedef scalar_t__ int64_t ;


 scalar_t__ NSEC_PER_SEC ;
 int bintime_addns (struct bintime*,int) ;
 int bintime_addx (struct bintime*,int) ;
 int bintime_subns (struct bintime*,int) ;
 int bintime_subx (struct bintime*,int) ;
 int multi_overflow (int,int) ;

__attribute__((used)) static __inline void
bintime_addxns(struct bintime *bt, uint64_t a, int64_t xns)
{
 uint64_t uxns = (xns > 0)?(uint64_t )xns:(uint64_t)-xns;
 uint64_t ns = multi_overflow(a, uxns);
 if (xns > 0) {
  if (ns)
   bintime_addns(bt, ns);
  ns = (a * uxns) / (uint64_t)NSEC_PER_SEC;
  bintime_addx(bt, ns);
 }
 else{
  if (ns)
   bintime_subns(bt, ns);
  ns = (a * uxns) / (uint64_t)NSEC_PER_SEC;
  bintime_subx(bt,ns);
 }
}
