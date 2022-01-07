
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* key ;

int check_key(int code)
{
  static char lastbuf[0x100] = {0};

  if((!key[code]) && (lastbuf[code] == 1))
    lastbuf[code] = 0;

  if((key[code]) && (lastbuf[code] == 0))
  {
    lastbuf[code] = 1;
    return (1);
  }

  return (0);
}
