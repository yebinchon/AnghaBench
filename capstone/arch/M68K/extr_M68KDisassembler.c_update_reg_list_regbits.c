
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int m68k_info ;
struct TYPE_3__ {int register_bits; } ;
typedef TYPE_1__ cs_m68k_op ;


 int M68K_REG_A0 ;
 int M68K_REG_D0 ;
 int M68K_REG_FP0 ;
 int update_bits_range (int *,int ,int,int) ;

__attribute__((used)) static void update_reg_list_regbits(m68k_info *info, cs_m68k_op *op, int write)
{
 uint32_t bits = op->register_bits;
 update_bits_range(info, M68K_REG_D0, bits & 0xff, write);
 update_bits_range(info, M68K_REG_A0, (bits >> 8) & 0xff, write);
 update_bits_range(info, M68K_REG_FP0, (bits >> 16) & 0xff, write);
}
