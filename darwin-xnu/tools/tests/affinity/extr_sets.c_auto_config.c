
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int cachesize ;
typedef int cacheconfig ;


 int MAX_CACHE_DEPTH ;
 int errno ;
 int exit (int) ;
 int mutter (char*,...) ;
 int printf (char*,int) ;
 scalar_t__ sysctlbyname (char*,int*,size_t*,int *,int ) ;

__attribute__((used)) static void
auto_config(int npages, int *nbufs, int *nsets)
{
 size_t len;
 int ncpu;
 int llc;
 int64_t cacheconfig[MAX_CACHE_DEPTH];
 int64_t cachesize[MAX_CACHE_DEPTH];

 mutter("Autoconfiguring...\n");

 len = sizeof(cacheconfig);
 if (sysctlbyname("hw.cacheconfig",
    &cacheconfig[0], &len, ((void*)0), 0) != 0) {
  printf("Unable to get hw.cacheconfig, %d\n", errno);
  exit(1);
 }
 len = sizeof(cachesize);
 if (sysctlbyname("hw.cachesize",
    &cachesize[0], &len, ((void*)0), 0) != 0) {
  printf("Unable to get hw.cachesize, %d\n", errno);
  exit(1);
 }




 for (llc = MAX_CACHE_DEPTH - 1; llc > 0; llc--)
  if (cacheconfig[llc] != 0)
   break;





 *nbufs = cachesize[llc] * 9 / (npages * 4096 * 10);
 mutter("  L%d (LLC) cache %qd bytes: "
  "using %d buffers of size %d bytes\n",
  llc, cachesize[llc], *nbufs, (npages * 4096));




 *nsets = cacheconfig[0]/cacheconfig[llc];
 mutter("  %qd cpus; %qd cpus per L%d cache: using %d sets\n",
  cacheconfig[0], cacheconfig[llc], llc, *nsets);
}
