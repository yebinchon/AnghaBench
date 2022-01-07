
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int fclose (int *) ;
 int feof (int *) ;
 int fgetc (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*) ;
 int fputc (char,int ) ;
 scalar_t__ isgraph (int) ;
 int stderr ;
 int * stdin ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;

int main(int argc, char *argv[])
{
 FILE *fp;
 int c = EOF;
 if (argc == 1) {
  fprintf(stderr, "Usage: cleantxt <file>\n");
  return 1;
 }
 fp = strcmp(argv[1], "-")? fopen(argv[1], "rb") : stdin;
 if (fp == 0) {
  fprintf(stderr, "ERROR: fail to open the input file.\n");
  return 1;
 }
 while (!feof(fp)) {
  c = fgetc(fp);
  if (isgraph(c) || c == '\t' || c == '\n' || c == ' ')
   fputc(c, stdout);
 }
 if (c != '\n') fputc('\n', stdout);
 fclose(fp);
 return 0;
}
