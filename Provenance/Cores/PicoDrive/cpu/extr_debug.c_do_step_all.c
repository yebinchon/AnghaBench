
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct pdb_cpu {int dummy; } ;


 int CMDRET_CONT_DO_NEXT ;
 int CMDRET_DONE ;
 int atoi (char*) ;
 int get_arg (char*,int,char const*) ;
 int pdb_global_icount ;
 int printf (char*) ;

__attribute__((used)) static int do_step_all(struct pdb_cpu *cpu, const char *args)
{
  char tmp[32];
  if (!get_arg(tmp, sizeof(tmp), args)) {
    printf("step_all: missing arg\n");
    return CMDRET_DONE;
  }

  pdb_global_icount = atoi(tmp);
  return CMDRET_CONT_DO_NEXT;
}
