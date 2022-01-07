
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bufcon_putc (char*,unsigned int) ;

char* bufcon_puti( char *buffer, int num )
{
  unsigned int divisor;
  unsigned int current;
  unsigned int remainder;
  unsigned int found;

  if ( num < 0 )
  {
    bufcon_putc( buffer, '-' );
    current = -num;
  }
  else current = num;

  divisor = 1000000000;
  found = 0;

  while (divisor > 0)
  {
    remainder = current % divisor;
      current = current / divisor;

    if ( current != 0 ) found = 1;
    if ( found != 0 ) bufcon_putc( buffer, current + '0' );

    divisor = divisor / 10;
    current = remainder;
  }

  if ( found == 0 ) bufcon_putc( buffer, current + '0' );

  return buffer;
}
