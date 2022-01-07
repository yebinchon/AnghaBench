
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int FILE ;


 int SEEK_SET ;
 int fseek (int *,int ,int ) ;
 int getline (char**,size_t*,int *) ;
 int strcpy (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int tfree (char*) ;

void taosLoadFileCharset(FILE *fp, char *fcharset) {
  char * line = ((void*)0);
  size_t line_size = 0;

  fseek(fp, 0, SEEK_SET);
  ssize_t size = getline(&line, &line_size, fp);
  if (size <= 2) {
    goto _exit_no_charset;
  }

  if (strncmp(line, "#!", 2) != 0) {
    goto _exit_no_charset;
  }
  if (line[size - 1] == '\n') {
    line[size - 1] = '\0';
    size--;
  }
  strcpy(fcharset, line + 2);

  tfree(line);
  return;

_exit_no_charset:
  fseek(fp, 0, SEEK_SET);
  *fcharset = '\0';
  tfree(line);
  return;
}
