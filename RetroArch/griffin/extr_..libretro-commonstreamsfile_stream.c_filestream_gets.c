
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RFILE ;


 int EOF ;
 int filestream_getc (int *) ;

char* filestream_gets(RFILE *stream, char *s, size_t len)
{
   int c = 0;
   char *p = s;
   if (!stream)
      return ((void*)0);



   for (len--; len > 0; len--)
   {
      if ((c = filestream_getc(stream)) == EOF)
         break;
      *p++ = c;
      if (c == '\n')
         break;
   }
   *p = 0;

   if (p == s && c == EOF)
      return ((void*)0);
   return (s);
}
