
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {int addr; int data; } ;


 char* genie_chars ;
 char* strchr (char*,char const) ;

__attribute__((used)) static void genie_decode(const char* code, struct patch* result)
{
  int i = 0, n;
  char* x;

  for(; i < 8; ++i)
  {

    if(!(x = strchr(genie_chars, code[i])))
    {
      result->addr = -1; result->data = -1;
      return;
    }
    n = (x - genie_chars) >> 1;

    switch(i)
    {
    case 0:

      result->data |= n << 3;
      break;
    case 1:

      result->data |= n >> 2;
      result->addr |= (n & 3) << 14;
      break;
    case 2:

      result->addr |= n << 9;
      break;
    case 3:

      result->addr |= (n & 0xF) << 20 | (n >> 4) << 8;
      break;
    case 4:

      result->data |= (n & 1) << 12;
      result->addr |= (n >> 1) << 16;
      break;
    case 5:

      result->data |= (n & 1) << 15 | (n >> 1) << 8;
      break;
    case 6:

      result->data |= (n >> 3) << 13;
      result->addr |= (n & 7) << 5;
      break;
    case 7:

      result->addr |= n;
      break;
    }

  }
  return;
}
