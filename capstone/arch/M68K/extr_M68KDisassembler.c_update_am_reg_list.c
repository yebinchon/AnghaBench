
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int m68k_info ;
struct TYPE_4__ {int base_reg; int index_reg; } ;
struct TYPE_5__ {int address_mode; TYPE_1__ mem; int reg; } ;
typedef TYPE_2__ cs_m68k_op ;
 int add_reg_to_rw_list (int *,int ,int) ;

__attribute__((used)) static void update_am_reg_list(m68k_info *info, cs_m68k_op *op, int write)
{
 switch (op->address_mode) {
  case 129:
  case 128:
   add_reg_to_rw_list(info, op->reg, write);
   break;

  case 131:
  case 130:
   add_reg_to_rw_list(info, op->reg, 1);
   break;

  case 133:
  case 132:
   add_reg_to_rw_list(info, op->reg, 0);
   break;

  case 141:
  case 140:
  case 139:
  case 138:
  case 137:
  case 136:
  case 134:
  case 135:
   add_reg_to_rw_list(info, op->mem.index_reg, 0);
   add_reg_to_rw_list(info, op->mem.base_reg, 0);
   break;


  default:
   break;
 }
}
