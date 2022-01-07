
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint ;
struct TYPE_12__ {int ir; } ;
typedef TYPE_2__ m68k_info ;
struct TYPE_11__ {int bitfield; void* offset; void* width; } ;
struct TYPE_13__ {TYPE_1__ mem; scalar_t__ reg; int address_mode; } ;
typedef TYPE_3__ cs_m68k_op ;
struct TYPE_14__ {int op_count; TYPE_3__* operands; } ;
typedef TYPE_4__ cs_m68k ;


 scalar_t__ BIT_5 (int) ;
 scalar_t__ BIT_B (int) ;
 int M68K_AM_REG_DIRECT_DATA ;
 scalar_t__ M68K_REG_D0 ;
 TYPE_4__* build_init_op (TYPE_2__*,int,int,int ) ;
 scalar_t__* g_5bit_data_table ;
 int get_ea_mode_op (TYPE_2__*,TYPE_3__*,int ,int) ;
 int read_imm_16 (TYPE_2__*) ;

__attribute__((used)) static void build_bitfield_ins(m68k_info *info, int opcode, int has_d_arg)
{
 uint8_t offset;
 uint8_t width;
 cs_m68k_op* op_ea;
 cs_m68k_op* op1;
 cs_m68k* ext = build_init_op(info, opcode, 1, 0);
 uint extension = read_imm_16(info);

 op_ea = &ext->operands[0];
 op1 = &ext->operands[1];

 if (BIT_B(extension))
  offset = (extension >> 6) & 7;
 else
  offset = (extension >> 6) & 31;

 if (BIT_5(extension))
  width = extension & 7;
 else
  width = (uint8_t)g_5bit_data_table[extension & 31];

 if (has_d_arg) {
  ext->op_count = 2;
  op1->address_mode = M68K_AM_REG_DIRECT_DATA;
  op1->reg = M68K_REG_D0 + ((extension >> 12) & 7);
 }

 get_ea_mode_op(info, op_ea, info->ir, 1);

 op_ea->mem.bitfield = 1;
 op_ea->mem.width = width;
 op_ea->mem.offset = offset;
}
