
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct pdb_cpu {int name; } ;


 int CMDRET_CONT_REDO ;
 int CMDRET_DONE ;
 int get_arg (char*,int,char const*) ;
 int printf (char*) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static int do_waitcpu(struct pdb_cpu *cpu, const char *args)
{
  char tmp[32];
  if (!get_arg(tmp, sizeof(tmp), args)) {
    printf("waitcpu: missing arg\n");
    return CMDRET_DONE;
  }
  if (strcmp(tmp, cpu->name) == 0)
    return CMDRET_DONE;

  return CMDRET_CONT_REDO;
}
