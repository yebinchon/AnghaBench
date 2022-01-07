
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct pdb_cpu {int icount; } ;


 int CMDRET_CONT_DO_NEXT ;
 int atoi (char*) ;
 scalar_t__ get_arg (char*,int,char const*) ;

__attribute__((used)) static int do_continue(struct pdb_cpu *cpu, const char *args)
{
  char tmp[32];
  if (get_arg(tmp, sizeof(tmp), args))
    cpu->icount = atoi(tmp);
  return CMDRET_CONT_DO_NEXT;
}
