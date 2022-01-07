
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ mbuf_t ;


 scalar_t__ VM_KERNEL_ADDRPERM (int ) ;
 int mbuf_nextpkt (scalar_t__) ;
 int mbuf_pkthdr_header (scalar_t__) ;
 scalar_t__ mbuf_pkthdr_len (scalar_t__) ;
 int mbuf_pkthdr_rcvif (scalar_t__) ;
 int printf (char*,char const*,...) ;

void
printf_mbuf_pkthdr(mbuf_t m, const char *prefix, const char *suffix)
{
 if (m)
  printf("%spktlen: %u rcvif: 0x%llx header: 0x%llx "
      "nextpkt: 0x%llx%s",
      prefix ? prefix : "", (unsigned int)mbuf_pkthdr_len(m),
      (uint64_t)VM_KERNEL_ADDRPERM(mbuf_pkthdr_rcvif(m)),
      (uint64_t)VM_KERNEL_ADDRPERM(mbuf_pkthdr_header(m)),
      (uint64_t)VM_KERNEL_ADDRPERM(mbuf_nextpkt(m)),
      suffix ? suffix : "");
 else
  printf("%s<NULL>%s\n", prefix, suffix);
}
