
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef size_t uint32_t ;



__attribute__((used)) static inline void machine_classify_interval(uint64_t interval, uint64_t *bins, uint64_t *binvals, uint32_t nbins) {
 uint32_t i;
  for (i = 0; i < nbins; i++) {
   if (interval < binvals[i]) {
    bins[i]++;
    break;
   }
  }
}
