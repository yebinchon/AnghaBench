
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int csh ;
struct TYPE_3__ {int regs_read_count; int regs_write_count; int * regs_write; int * regs_read; } ;
typedef TYPE_1__ cs_detail ;


 int add_str (char**,char*,...) ;
 int cs_reg_name (int ,int ) ;

__attribute__((used)) static void print_read_write_regs(char *result, csh *handle, cs_detail *detail)
{
 int i;

 if (detail->regs_read_count > 0) {
  add_str(&result, "\treading from regs: ");

  for (i = 0; i < detail->regs_read_count; ++i) {
   if (i > 0)
    add_str(&result, ", ");

   add_str(&result, "%s", cs_reg_name(*handle, detail->regs_read[i]));
  }
 }

 if (detail->regs_write_count > 0) {
  add_str(&result, "\twriting to regs: ");

  for (i = 0; i < detail->regs_write_count; ++i) {
   if (i > 0)
    add_str(&result, ", ");

   add_str(&result, "%s", cs_reg_name(*handle, detail->regs_write[i]));
  }
 }
}
