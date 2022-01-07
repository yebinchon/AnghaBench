
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputs (char*,int ) ;
 int stdout ;

void supcon_puti( int num )
{
  int sign;
  int temp;
  char buffer[ 128 ];
  int position = 126;


  if ( num == 0 )
  {
 fputs("0",stdout);
 return;
  }



  if ( num < 0 )
  {
 sign = 1;
 temp = -num;
  }
  else
  {
 sign = 0;
 temp = num;
  }


  buffer[127] = 0;


  while ( temp > 0 )
  {
 buffer[ position-- ] = '0' + (temp % 10);
 temp = temp / 10;
  }

  if ( sign == 1 ) buffer[ position-- ] = '-';


  fputs(buffer + position + 1 ,stdout);
}
