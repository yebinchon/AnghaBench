
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int csh ;
struct TYPE_3__ {int regs_read_count; int regs_write_count; int * regs_write; int * regs_read; } ;
typedef TYPE_1__ cs_detail ;


 char* cs_reg_name (int ,int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void print_read_write_regs(csh handle, cs_detail *detail)
{
 int i;

 if (detail->regs_read_count > 0) {
  printf("\tRegisters read:");

  for (i = 0; i < detail->regs_read_count; ++i)
   printf(" %s",
    cs_reg_name(handle, detail->regs_read[i]));

  printf("\n");
 }

 if (detail->regs_write_count > 0) {
  printf("\tRegisters modified:");

  for (i = 0; i < detail->regs_write_count; ++i)
   printf(" %s",
    cs_reg_name(handle, detail->regs_write[i]));

  printf("\n");
 }
}
