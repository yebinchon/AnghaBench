
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;


 int TH_ACK ;
 int TH_CWR ;
 int TH_ECE ;
 int TH_FIN ;
 int TH_PUSH ;
 int TH_RST ;
 int TH_SYN ;
 int TH_URG ;
 int printf (char*) ;

void
pf_print_flags(u_int8_t f)
{
 if (f)
  printf(" ");
 if (f & TH_FIN)
  printf("F");
 if (f & TH_SYN)
  printf("S");
 if (f & TH_RST)
  printf("R");
 if (f & TH_PUSH)
  printf("P");
 if (f & TH_ACK)
  printf("A");
 if (f & TH_URG)
  printf("U");
 if (f & TH_ECE)
  printf("E");
 if (f & TH_CWR)
  printf("W");
}
