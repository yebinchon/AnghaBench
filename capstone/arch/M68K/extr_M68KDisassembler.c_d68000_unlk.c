
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ir; } ;
typedef TYPE_1__ m68k_info ;
struct TYPE_8__ {scalar_t__ reg; int address_mode; } ;
typedef TYPE_2__ cs_m68k_op ;
struct TYPE_9__ {TYPE_2__* operands; } ;
typedef TYPE_3__ cs_m68k ;


 int M68K_AM_REG_DIRECT_ADDR ;
 int M68K_INS_UNLK ;
 scalar_t__ M68K_REG_A0 ;
 TYPE_3__* build_init_op (TYPE_1__*,int ,int,int ) ;

__attribute__((used)) static void d68000_unlk(m68k_info *info)
{
 cs_m68k_op* op;
 cs_m68k* ext = build_init_op(info, M68K_INS_UNLK, 1, 0);

 op = &ext->operands[0];

 op->address_mode = M68K_AM_REG_DIRECT_ADDR;
 op->reg = M68K_REG_A0 + (info->ir & 7);
}
