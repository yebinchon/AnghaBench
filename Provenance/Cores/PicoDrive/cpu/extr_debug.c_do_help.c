
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pdb_cpu {int dummy; } ;
struct TYPE_3__ {char* cmd; char* help; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int CMDRET_DONE ;
 TYPE_1__* pdb_cmds ;
 int printf (char*,char*,char*) ;

__attribute__((used)) static int do_help(struct pdb_cpu *cpu, const char *args)
{
  int i;
  for (i = 0; i < ARRAY_SIZE(pdb_cmds); i++)
    printf("%s %s\n", pdb_cmds[i].cmd, pdb_cmds[i].help);
  return CMDRET_DONE;
}
