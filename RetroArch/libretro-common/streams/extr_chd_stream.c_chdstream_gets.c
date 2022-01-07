
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chdstream_t ;


 int EOF ;
 int chdstream_getc (int *) ;

char *chdstream_gets(chdstream_t *stream, char *buffer, size_t len)
{
   int c;

   size_t offset = 0;

   while (offset < len && (c = chdstream_getc(stream)) != EOF)
      buffer[offset++] = c;

   if (offset < len)
      buffer[offset] = '\0';

   return buffer;
}
