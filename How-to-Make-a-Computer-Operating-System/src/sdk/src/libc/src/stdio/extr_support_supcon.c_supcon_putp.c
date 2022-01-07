
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputs (char*,int ) ;
 int stdout ;

void supcon_putp( unsigned int num, char offset )
{
  char buffer[ 128 ];
  int position = 126;
  unsigned int temp = num;
  int value;


  if ( num == 0 )
  {
 fputs("0",stdout);
 return;
  }

  buffer[127] = 0;


  while ( temp > 0 )
  {
 value = temp % 16;
 if ( value < 10 ) buffer[ position-- ] = '0' + value;
    else buffer[ position-- ] = offset - 10 + value;
 temp = temp / 16;
  }


    fputs(buffer + position + 1 ,stdout);

}
