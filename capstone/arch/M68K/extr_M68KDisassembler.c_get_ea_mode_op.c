
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint ;
typedef int m68k_info ;
typedef void* int16_t ;
struct TYPE_5__ {int base_reg; void* disp; } ;
struct TYPE_6__ {int reg; int imm; void* type; int address_mode; TYPE_1__ mem; } ;
typedef TYPE_2__ cs_m68k_op ;


 int M68K_AM_ABSOLUTE_DATA_LONG ;
 int M68K_AM_ABSOLUTE_DATA_SHORT ;
 int M68K_AM_IMMEDIATE ;
 int M68K_AM_PCI_DISP ;
 int M68K_AM_REGI_ADDR ;
 int M68K_AM_REGI_ADDR_DISP ;
 int M68K_AM_REGI_ADDR_POST_INC ;
 int M68K_AM_REGI_ADDR_PRE_DEC ;
 int M68K_AM_REG_DIRECT_ADDR ;
 int M68K_AM_REG_DIRECT_DATA ;
 void* M68K_OP_IMM ;
 void* M68K_OP_MEM ;
 void* M68K_OP_REG ;
 int M68K_REG_A0 ;
 int M68K_REG_D0 ;
 int get_with_index_address_mode (int *,TYPE_2__*,int,int,int) ;
 int read_imm_16 (int *) ;
 void* read_imm_32 (int *) ;
 int read_imm_64 (int *) ;
 int read_imm_8 (int *) ;

__attribute__((used)) static void get_ea_mode_op(m68k_info *info, cs_m68k_op* op, uint instruction, uint size)
{


 op->type = M68K_OP_MEM;

 switch (instruction & 0x3f) {
  case 0x00: case 0x01: case 0x02: case 0x03: case 0x04: case 0x05: case 0x06: case 0x07:

   op->address_mode = M68K_AM_REG_DIRECT_DATA;
   op->reg = M68K_REG_D0 + (instruction & 7);
   op->type = M68K_OP_REG;
   break;

  case 0x08: case 0x09: case 0x0a: case 0x0b: case 0x0c: case 0x0d: case 0x0e: case 0x0f:

   op->address_mode = M68K_AM_REG_DIRECT_ADDR;
   op->reg = M68K_REG_A0 + (instruction & 7);
   op->type = M68K_OP_REG;
   break;

  case 0x10: case 0x11: case 0x12: case 0x13: case 0x14: case 0x15: case 0x16: case 0x17:

   op->address_mode = M68K_AM_REGI_ADDR;
   op->reg = M68K_REG_A0 + (instruction & 7);
   break;

  case 0x18: case 0x19: case 0x1a: case 0x1b: case 0x1c: case 0x1d: case 0x1e: case 0x1f:

   op->address_mode = M68K_AM_REGI_ADDR_POST_INC;
   op->reg = M68K_REG_A0 + (instruction & 7);
   break;

  case 0x20: case 0x21: case 0x22: case 0x23: case 0x24: case 0x25: case 0x26: case 0x27:

   op->address_mode = M68K_AM_REGI_ADDR_PRE_DEC;
   op->reg = M68K_REG_A0 + (instruction & 7);
   break;

  case 0x28: case 0x29: case 0x2a: case 0x2b: case 0x2c: case 0x2d: case 0x2e: case 0x2f:

   op->address_mode = M68K_AM_REGI_ADDR_DISP;
   op->mem.base_reg = M68K_REG_A0 + (instruction & 7);
   op->mem.disp = (int16_t)read_imm_16(info);
   break;

  case 0x30: case 0x31: case 0x32: case 0x33: case 0x34: case 0x35: case 0x36: case 0x37:

   get_with_index_address_mode(info, op, instruction, size, 0);
   break;

  case 0x38:

   op->address_mode = M68K_AM_ABSOLUTE_DATA_SHORT;
   op->imm = read_imm_16(info);
   break;

  case 0x39:

   op->address_mode = M68K_AM_ABSOLUTE_DATA_LONG;
   op->imm = read_imm_32(info);
   break;

  case 0x3a:

   op->address_mode = M68K_AM_PCI_DISP;
   op->mem.disp = (int16_t)read_imm_16(info);
   break;

  case 0x3b:

   get_with_index_address_mode(info, op, instruction, size, 1);
   break;

  case 0x3c:
   op->address_mode = M68K_AM_IMMEDIATE;
   op->type = M68K_OP_IMM;

   if (size == 1)
    op->imm = read_imm_8(info) & 0xff;
   else if (size == 2)
    op->imm = read_imm_16(info) & 0xffff;
   else if (size == 4)
    op->imm = read_imm_32(info);
   else
    op->imm = read_imm_64(info);

   break;

  default:
   break;
 }
}
