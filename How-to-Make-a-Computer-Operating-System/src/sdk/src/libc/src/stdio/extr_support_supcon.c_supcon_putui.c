
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputs (char*,int ) ;
 int stdout ;

void supcon_putui( unsigned int num )
{
  char buffer[ 128 ];
  int position = 126;
  unsigned int temp = num;


  if ( num == 0 )
  {
   fputs("0",stdout);
 return;
  }

  buffer[127] = 0;


  while ( temp > 0 )
  {
 buffer[ position-- ] = '0' + (temp % 10);
 temp = temp / 10;
  }


  fputs(buffer + position + 1 ,stdout);
}
