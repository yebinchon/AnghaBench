
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* sqrTable; } ;


 TYPE_1__ cin ;

long RllDecodeMonoToMono(unsigned char *from,short *to,unsigned int size,char signedOutput ,unsigned short flag)
{
 unsigned int z;
 int prev;

 if (signedOutput)
  prev = flag - 0x8000;
 else
  prev = flag;

 for (z=0;z<size;z++) {
  prev = to[z] = (short)(prev + cin.sqrTable[from[z]]);
 }
 return size;
}
