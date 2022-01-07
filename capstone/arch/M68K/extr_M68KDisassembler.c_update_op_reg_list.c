
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int m68k_info ;
struct TYPE_6__ {scalar_t__ reg_1; scalar_t__ reg_0; } ;
struct TYPE_7__ {TYPE_1__ reg_pair; scalar_t__ reg; scalar_t__ type; } ;
typedef TYPE_2__ cs_m68k_op ;






 scalar_t__ M68K_REG_D0 ;
 int add_reg_to_rw_list (int *,scalar_t__,int) ;
 int update_am_reg_list (int *,TYPE_2__*,int) ;
 int update_reg_list_regbits (int *,TYPE_2__*,int) ;

__attribute__((used)) static void update_op_reg_list(m68k_info *info, cs_m68k_op *op, int write)
{
 switch ((int)op->type) {
  case 130:
   add_reg_to_rw_list(info, op->reg, write);
   break;

  case 131:
   update_am_reg_list(info, op, write);
   break;

  case 129:
   update_reg_list_regbits(info, op, write);
   break;

  case 128:
   add_reg_to_rw_list(info, M68K_REG_D0 + op->reg_pair.reg_0, write);
   add_reg_to_rw_list(info, M68K_REG_D0 + op->reg_pair.reg_1, write);
   break;
 }
}
