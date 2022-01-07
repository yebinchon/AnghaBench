
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int rebase_chain (uintptr_t,int,uintptr_t,size_t) ;

__attribute__((used)) static bool
rebase_threaded_starts(uint32_t *threadArrayStart, uint32_t *threadArrayEnd,
                     uintptr_t macho_header_addr, uintptr_t macho_header_vmaddr, size_t slide)
{
 uint32_t threadStartsHeader = *threadArrayStart;
 uint64_t stepMultiplier = (threadStartsHeader & 1) == 1 ? 8 : 4;
 for (uint32_t* threadOffset = threadArrayStart + 1; threadOffset != threadArrayEnd; ++threadOffset) {
  if (*threadOffset == 0xFFFFFFFF)
   break;
  rebase_chain(macho_header_addr + *threadOffset, stepMultiplier, macho_header_vmaddr, slide);
 }
 return 1;
}
