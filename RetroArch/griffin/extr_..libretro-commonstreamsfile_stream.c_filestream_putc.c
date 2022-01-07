
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RFILE ;


 int EOF ;
 int filestream_write (int *,char*,int) ;

int filestream_putc(RFILE *stream, int c)
{
   char c_char = (char)c;
   if (!stream)
      return EOF;
   return filestream_write(stream, &c_char, 1)==1 ? (int)(unsigned char)c : EOF;
}
