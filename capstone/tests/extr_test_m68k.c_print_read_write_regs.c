
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int regs_read_count; int regs_write_count; int * regs_write; int * regs_read; } ;
typedef TYPE_1__ cs_detail ;


 char* cs_reg_name (int ,int ) ;
 int handle ;
 int printf (char*,char const*) ;

__attribute__((used)) static void print_read_write_regs(cs_detail* detail)
{
 int i;

 for (i = 0; i < detail->regs_read_count; ++i)
 {
  uint16_t reg_id = detail->regs_read[i];
  const char* reg_name = cs_reg_name(handle, reg_id);
  printf("\treading from reg: %s\n", reg_name);
 }

 for (i = 0; i < detail->regs_write_count; ++i)
 {
  uint16_t reg_id = detail->regs_write[i];
  const char* reg_name = cs_reg_name(handle, reg_id);
  printf("\twriting to reg:   %s\n", reg_name);
 }
}
