
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int atoh(char* buff)
{
 int accum = 0;

 for(;;buff++)
 {
  if(*buff >= '0' && *buff <= '9')
  {
   accum <<= 4;
   accum += *buff - '0';
  }
  else if(*buff >= 'a' && *buff <= 'f')
  {
   accum <<= 4;
   accum += *buff - 'a' + 10;
  }
  else break;
 }
 return accum;
}
