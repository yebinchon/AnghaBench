
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68k_info ;


 int M68K_INS_STOP ;
 int build_absolute_jump_with_immediate (int *,int ,int ,int ) ;
 int read_imm_16 (int *) ;

__attribute__((used)) static void d68000_stop(m68k_info *info)
{
 build_absolute_jump_with_immediate(info, M68K_INS_STOP, 0, read_imm_16(info));
}
