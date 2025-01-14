
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ mbuf_t ;


 int MBUF_PKTHDR ;
 scalar_t__ VM_KERNEL_ADDRPERM (scalar_t__) ;
 scalar_t__ mbuf_data (scalar_t__) ;
 scalar_t__ mbuf_datastart (scalar_t__) ;
 int mbuf_flags (scalar_t__) ;
 scalar_t__ mbuf_len (scalar_t__) ;
 scalar_t__ mbuf_maxlen (scalar_t__) ;
 scalar_t__ mbuf_next (scalar_t__) ;
 int mbuf_type (scalar_t__) ;
 int printf (char*,char const*,...) ;
 int printf_mbuf_pkthdr (scalar_t__,char*,char const*) ;

void
printf_mbuf(mbuf_t m, const char *prefix, const char *suffix)
{
 if (m) {
  printf("%s0x%llx type: %u flags: 0x%x len: %u data: 0x%llx "
      "maxlen: %u datastart: 0x%llx next: 0x%llx%s",
      prefix ? prefix : "", (uint64_t)VM_KERNEL_ADDRPERM(m),
      mbuf_type(m), mbuf_flags(m), (unsigned int)mbuf_len(m),
      (uint64_t)VM_KERNEL_ADDRPERM(mbuf_data(m)),
      (unsigned int)mbuf_maxlen(m),
      (uint64_t)VM_KERNEL_ADDRPERM(mbuf_datastart(m)),
      (uint64_t)VM_KERNEL_ADDRPERM(mbuf_next(m)),
      !suffix || (mbuf_flags(m) & MBUF_PKTHDR) ? "" : suffix);
  if ((mbuf_flags(m) & MBUF_PKTHDR))
   printf_mbuf_pkthdr(m, " ", suffix);
 } else
  printf("%s<NULL>%s\n", prefix, suffix);
}
