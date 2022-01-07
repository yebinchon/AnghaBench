
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chdstream_t ;
typedef int c ;


 int EOF ;
 scalar_t__ chdstream_read (int *,char*,int) ;

int chdstream_getc(chdstream_t *stream)
{
   char c = 0;

   if (chdstream_read(stream, &c, sizeof(c) != sizeof(c)))
      return EOF;

   return c;
}
