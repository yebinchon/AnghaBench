
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdb_cpu {int icount; } ;


 int do_continue (struct pdb_cpu*,char const*) ;

__attribute__((used)) static int do_step(struct pdb_cpu *cpu, const char *args)
{
  cpu->icount = 1;
  return do_continue(cpu, args);
}
