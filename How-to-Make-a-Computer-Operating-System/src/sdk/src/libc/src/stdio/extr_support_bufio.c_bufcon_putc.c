
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcat (char*,char const*) ;

char* bufcon_putc( char *buffer, unsigned char c )
{
  unsigned char str[2];

     str[0] = c;
     str[1] = 0;

     strcat( buffer,(const char*)str );

  return buffer;
}
