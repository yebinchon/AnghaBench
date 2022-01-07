
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int RegSetSize; int* RegSet; } ;
typedef TYPE_1__ MCRegisterClass ;



bool MCRegisterClass_contains(const MCRegisterClass *c, unsigned Reg)
{
 unsigned InByte = Reg % 8;
 unsigned Byte = Reg / 8;

 if (Byte >= c->RegSetSize)
  return 0;

 return (c->RegSet[Byte] & (1 << InByte)) != 0;
}
