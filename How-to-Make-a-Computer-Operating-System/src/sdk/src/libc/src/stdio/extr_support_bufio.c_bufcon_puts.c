
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcat (char*,char*) ;

char* bufcon_puts( char *buffer, char *str )
{
  strcat( buffer, str );
  return buffer;
}
