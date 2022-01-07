
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 scalar_t__ calloc (int,int) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fread (char*,int,int,int *) ;
 int fseek (int *,int ,int ) ;
 int ftell (int *) ;
 int puts (char*) ;
 int rewind (int *) ;

char *readfile(const char *filename)
{
 char *result;
 FILE *fp;
 int size;

 fp = fopen(filename, "r");
 if (fp == ((void*)0)) {
  puts("No such file");
  exit(-1);
 }

 fseek(fp, 0, SEEK_END);
 size = ftell(fp);
 rewind(fp);

 result = (char *)calloc(1, sizeof(char) * size + 1);
 fread(result, size, 1, fp);
 result[size] = '\0';

 fclose(fp);
 return result;
}
