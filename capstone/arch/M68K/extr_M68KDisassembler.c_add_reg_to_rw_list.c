
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint16_t ;
typedef scalar_t__ m68k_reg ;
struct TYPE_3__ {size_t regs_write_count; size_t regs_read_count; void** regs_read; void** regs_write; } ;
typedef TYPE_1__ m68k_info ;


 scalar_t__ M68K_REG_INVALID ;
 scalar_t__ exists_reg_list (void**,size_t,scalar_t__) ;

__attribute__((used)) static void add_reg_to_rw_list(m68k_info *info, m68k_reg reg, int write)
{
 if (reg == M68K_REG_INVALID)
  return;

 if (write)
 {
  if (exists_reg_list(info->regs_write, info->regs_write_count, reg))
   return;

  info->regs_write[info->regs_write_count] = (uint16_t)reg;
  info->regs_write_count++;
 }
 else
 {
  if (exists_reg_list(info->regs_read, info->regs_read_count, reg))
   return;

  info->regs_read[info->regs_read_count] = (uint16_t)reg;
  info->regs_read_count++;
 }
}
