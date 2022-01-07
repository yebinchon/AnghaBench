
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RFILE ;


 int EOF ;
 int filestream_read (int *,char*,int) ;

int filestream_getc(RFILE *stream)
{
   char c = 0;
   if (!stream)
      return EOF;
   if (filestream_read(stream, &c, 1) == 1)
      return (int)(unsigned char)c;
   return EOF;
}
