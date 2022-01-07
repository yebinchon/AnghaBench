
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CS_ARCH_ARM ;
 int CS_ARCH_ARM64 ;
 int CS_ARCH_EVM ;
 int CS_ARCH_M680X ;
 int CS_ARCH_M68K ;
 int CS_ARCH_MIPS ;
 int CS_ARCH_MOS65XX ;
 int CS_ARCH_PPC ;
 int CS_ARCH_SPARC ;
 int CS_ARCH_SYSZ ;
 int CS_ARCH_TMS320C64X ;
 int CS_ARCH_X86 ;
 int CS_ARCH_XCORE ;
 int CS_SUPPORT_DIET ;
 int CS_SUPPORT_X86_REDUCE ;
 scalar_t__ cs_support (int ) ;
 int printf (char*) ;

int main()
{
 if (cs_support(CS_ARCH_X86)) {
  printf("x86=1 ");
 }

 if (cs_support(CS_ARCH_ARM)) {
  printf("arm=1 ");
 }

 if (cs_support(CS_ARCH_ARM64)) {
  printf("arm64=1 ");
 }

 if (cs_support(CS_ARCH_MIPS)) {
  printf("mips=1 ");
 }

 if (cs_support(CS_ARCH_PPC)) {
  printf("ppc=1 ");
 }

 if (cs_support(CS_ARCH_SPARC)) {
  printf("sparc=1 ");
 }

 if (cs_support(CS_ARCH_SYSZ)) {
  printf("sysz=1 ");
 }

 if (cs_support(CS_ARCH_XCORE)) {
  printf("xcore=1 ");
 }

 if (cs_support(CS_ARCH_M68K)) {
  printf("m68k=1 ");
 }

 if (cs_support(CS_ARCH_TMS320C64X)) {
  printf("tms320c64x=1 ");
 }

 if (cs_support(CS_ARCH_M680X)) {
  printf("m680x=1 ");
 }

 if (cs_support(CS_ARCH_EVM)) {
  printf("evm=1 ");
 }

 if (cs_support(CS_ARCH_MOS65XX)) {
  printf("mos65xx=1 ");
 }

 if (cs_support(CS_SUPPORT_DIET)) {
  printf("diet=1 ");
 }

 if (cs_support(CS_SUPPORT_X86_REDUCE)) {
  printf("x86_reduce=1 ");
 }

 printf("\n");

 return 0;
}
