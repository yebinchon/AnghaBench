
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int old; int address; int data; } ;


 int SYSTEM_MD ;
 int SYSTEM_PBC ;
 char* arvalidchars ;
 TYPE_1__* cheatlist ;
 char* ggvalidchars ;
 char* strchr (char*,int ) ;
 int strlen (char*) ;
 int system_hw ;

__attribute__((used)) static u32 decode_cheat(char *string, int index)
{
  char *p;
  int i,n;
  u32 len = 0;
  u32 address = 0;
  u16 data = 0;
  u8 ref = 0;


  if ((strlen(string) >= 9) && (string[4] == '-'))
  {

    if ((system_hw & SYSTEM_PBC) != SYSTEM_MD)
    {
      return 0;
    }

    for (i = 0; i < 8; i++)
    {
      if (i == 4) string++;
      p = strchr (ggvalidchars, *string++);
      if (p == ((void*)0)) return 0;
      n = p - ggvalidchars;

      switch (i)
      {
        case 0:
        data |= n << 3;
        break;

        case 1:
        data |= n >> 2;
        address |= (n & 3) << 14;
        break;

        case 2:
        address |= n << 9;
        break;

        case 3:
        address |= (n & 0xF) << 20 | (n >> 4) << 8;
        break;

        case 4:
        data |= (n & 1) << 12;
        address |= (n >> 1) << 16;
        break;

        case 5:
        data |= (n & 1) << 15 | (n >> 1) << 8;
        break;

        case 6:
        data |= (n >> 3) << 13;
        address |= (n & 7) << 5;
        break;

        case 7:
        address |= n;
        break;
      }
    }


    len = 9;
  }


  else if ((strlen(string) >= 11) && (string[3] == '-') && (string[7] == '-'))
  {

    if ((system_hw & SYSTEM_PBC) == SYSTEM_MD)
    {
      return 0;
    }


    for (i=0; i<2; i++)
    {
      p = strchr (arvalidchars, *string++);
      if (p == ((void*)0)) return 0;
      n = (p - arvalidchars) & 0xF;
      data |= (n << ((1 - i) * 4));
    }


    for (i=0; i<3; i++)
    {
      if (i==1) string++;
      p = strchr (arvalidchars, *string++);
      if (p == ((void*)0)) return 0;
      n = (p - arvalidchars) & 0xF;
      address |= (n << ((2 - i) * 4));
    }


    p = strchr (arvalidchars, *string++);
    if (p == ((void*)0)) return 0;
    n = (p - arvalidchars) & 0xF;
    n ^= 0xF;
    address |= (n << 12);


    if (address >= 0xC000)
    {

      address = 0xFF0000 | (address & 0x1FFF);
    }


    for (i=0; i<2; i++)
    {
      string++;
      p = strchr (arvalidchars, *string++);
      if (p == ((void*)0)) return 0;
      n = (p - arvalidchars) & 0xF;
      ref |= (n << ((1 - i) * 4));
    }
    ref = (ref >> 2) | ((ref & 0x03) << 6);
    ref ^= 0xBA;


    cheatlist[index].old = ref;


    len = 11;
  }


  else if (string[6] == ':')
  {
    if ((system_hw & SYSTEM_PBC) == SYSTEM_MD)
    {

      if (strlen(string) < 11) return 0;


      for (i=0; i<6; i++)
      {
        p = strchr (arvalidchars, *string++);
        if (p == ((void*)0)) return 0;
        n = (p - arvalidchars) & 0xF;
        address |= (n << ((5 - i) * 4));
      }


      string++;
      for (i=0; i<4; i++)
      {
        p = strchr (arvalidchars, *string++);
        if (p == ((void*)0)) return 0;
        n = (p - arvalidchars) & 0xF;
        data |= (n << ((3 - i) * 4));
      }


      len = 11;
    }
    else
    {

      if (strlen(string) < 9) return 0;


      string+=2;
      for (i=0; i<4; i++)
      {
        p = strchr (arvalidchars, *string++);
        if (p == ((void*)0)) return 0;
        n = (p - arvalidchars) & 0xF;
        address |= (n << ((3 - i) * 4));
      }


      if (address < 0xC000) return 0;


      address = 0xFF0000 | (address & 0x1FFF);


      string++;
      for (i=0; i<2; i++)
      {
        p = strchr (arvalidchars, *string++);
        if (p == ((void*)0)) return 0;
        n = (p - arvalidchars) & 0xF;
        data |= (n << ((1 - i) * 4));
      }


      len = 9;
    }
  }


  if (len)
  {

    cheatlist[index].address = address;
    cheatlist[index].data = data;
  }


  return len;
}
