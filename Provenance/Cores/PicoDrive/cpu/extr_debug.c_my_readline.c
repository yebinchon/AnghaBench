
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int add_history (char*) ;
 int fflush (int ) ;
 int getline (char**,size_t*,int ) ;
 int printf (char*) ;
 char* readline (char*) ;
 int stdin ;
 int stdout ;

__attribute__((used)) static char *my_readline(const char *prompt)
{
  char *line = ((void*)0);
  size_t size = 0;
  ssize_t ret;

  printf("(pdb) ");
  fflush(stdout);
  ret = getline(&line, &size, stdin);
  if (ret < 0)
    return ((void*)0);
  if (ret > 0 && line[ret - 1] == '\n')
    line[ret - 1] = 0;


  return line;
}
