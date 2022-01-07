
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int getc (int *) ;

char *
get_rest(FILE *fp)
{
 static char line[80];
 int ch;
 char *cp;

 cp = line;
 while ((ch = getc(fp)) != EOF) {
  if (ch == '\n')
   break;
  *cp++ = ch;
 }
 *cp = 0;
 if (ch == EOF)
  return ((char *)EOF);
 return (line);
}
