
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 scalar_t__ BIT_1F (int) ;
 scalar_t__ BIT_F (int) ;
 int LIMIT_CPU_TYPES (int ) ;
 int M68020_PLUS ;
 int g_dasm_str ;
 int read_imm_32 () ;
 int sprintf (int ,char*,int,int,int,int,char,int,char,int) ;

__attribute__((used)) static void d68020_cas2_16(void)
{






 uint extension;
 LIMIT_CPU_TYPES(M68020_PLUS);
 extension = read_imm_32();
 sprintf(g_dasm_str, "cas2.w  D%d:D%d, D%d:D%d, (%c%d):(%c%d); (2+)",
  (extension>>16)&7, extension&7, (extension>>22)&7, (extension>>6)&7,
  BIT_1F(extension) ? 'A' : 'D', (extension>>28)&7,
  BIT_F(extension) ? 'A' : 'D', (extension>>12)&7);
}
