
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int getc (int *) ;
 scalar_t__ isspace (int) ;
 int ungetc (int,int *) ;

const char *
get_word(FILE *fp)
{
 static char line[80];
 int ch;
 char *cp;

 while ((ch = getc(fp)) != EOF)
  if (ch != ' ' && ch != '\t')
   break;
 if (ch == EOF)
  return ((char *)EOF);
 if (ch == '\n')
  return (((void*)0));
 if (ch == '|')
  return( "|");
 cp = line;
 *cp++ = ch;
 while ((ch = getc(fp)) != EOF) {
  if (isspace(ch))
   break;
  *cp++ = ch;
 }
 *cp = 0;
 if (ch == EOF)
  return ((char *)EOF);
 (void) ungetc(ch, fp);
 return (line);
}
