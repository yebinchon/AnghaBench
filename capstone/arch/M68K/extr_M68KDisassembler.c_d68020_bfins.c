
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * operands; } ;
struct TYPE_6__ {TYPE_2__ extension; } ;
typedef TYPE_1__ m68k_info ;
typedef int cs_m68k_op ;
typedef TYPE_2__ cs_m68k ;


 int LIMIT_CPU_TYPES (TYPE_1__*,int ) ;
 int M68020_PLUS ;
 int M68K_INS_BFINS ;
 int build_bitfield_ins (TYPE_1__*,int ,int) ;

__attribute__((used)) static void d68020_bfins(m68k_info *info)
{
 cs_m68k* ext = &info->extension;
 cs_m68k_op temp;

 LIMIT_CPU_TYPES(info, M68020_PLUS);
 build_bitfield_ins(info, M68K_INS_BFINS, 1);



 temp = ext->operands[0];
 ext->operands[0] = ext->operands[1];
 ext->operands[1] = temp;
}
