
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reg; unsigned short valmask; unsigned short val; } ;
typedef TYPE_1__ reg_setting ;


 unsigned short* memregs ;

__attribute__((used)) static void set_reg_setting(const reg_setting *set)
{
 for (; set->reg; set++)
 {
  unsigned short val = memregs[set->reg >> 1];
  val &= ~set->valmask;
  val |= set->val;
  memregs[set->reg >> 1] = val;
 }
}
