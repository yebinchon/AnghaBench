
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {int addr; int data; } ;


 char* hex_chars ;
 char* strchr (char*,char const) ;

__attribute__((used)) static void hex_decode(const char *code, struct patch *result)
{
  char *x;
  int i;

  for(i = 0; i < 6; ++i)
    {
      if(!(x = strchr(hex_chars, code[i])))
      {
 result->addr = result->data = -1;
 return;
      }
      result->addr = (result->addr << 4) | ((x - hex_chars) >> 1);
    }

  for(i = 6; i < 10; ++i)
    {
      if(!(x = strchr(hex_chars, code[i])))
      {
 result->addr = result->data = -1;
 return;
      }
      result->data = (result->data << 4) | ((x - hex_chars) >> 1);
    }
}
