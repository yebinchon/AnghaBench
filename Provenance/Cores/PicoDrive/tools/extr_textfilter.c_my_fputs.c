
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fputs (char*,int *) ;
 int isspace (char) ;
 int memcpy (char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static int my_fputs(char *s, FILE *stream)
{
 char *p;

 for (p = s + strlen(s) - 1; p >= s; p--)
  if (!isspace(*p))
   break;
 p++;


 memcpy(p, "\r\n", 3);

 return fputs(s, stream);
}
