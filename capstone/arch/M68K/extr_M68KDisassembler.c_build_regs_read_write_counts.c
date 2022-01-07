
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int op_count; int * operands; } ;
struct TYPE_6__ {TYPE_1__ extension; } ;
typedef TYPE_2__ m68k_info ;


 int update_op_reg_list (TYPE_2__*,int *,int) ;

__attribute__((used)) static void build_regs_read_write_counts(m68k_info *info)
{
 int i;

 if (!info->extension.op_count)
  return;

 if (info->extension.op_count == 1) {
  update_op_reg_list(info, &info->extension.operands[0], 1);
 } else {

  update_op_reg_list(info, &info->extension.operands[0], 0);


  for (i = 1; i < info->extension.op_count; ++i)
   update_op_reg_list(info, &info->extension.operands[i], 1);
 }
}
