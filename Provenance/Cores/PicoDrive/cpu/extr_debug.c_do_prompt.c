
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdb_cpu {int dummy; } ;
typedef int prev ;


 int do_comands (struct pdb_cpu*,char*) ;
 int free (char*) ;
 char* my_readline (char*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static void do_prompt(struct pdb_cpu *cpu)
{
  static char prev[128];
  int ret;

  while (1) {
    char *line, *cline;

    line = my_readline("(pdb) ");
    if (line == ((void*)0))
      break;
    if (line[0] == 0)
      cline = prev;
    else {
      cline = line;
      strncpy(prev, line, sizeof(prev));
    }

    ret = do_comands(cpu, cline);
    free(line);

    if (ret == 0)
      break;
  }
}
