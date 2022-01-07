
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* sqrTable; } ;


 TYPE_1__ cin ;

long RllDecodeStereoToMono(unsigned char *from,short *to,unsigned int size,char signedOutput, unsigned short flag)
{
 unsigned int z;
 int prevL,prevR;

 if (signedOutput) {
  prevL = (flag & 0xff00) - 0x8000;
  prevR = ((flag & 0x00ff) << 8) -0x8000;
 } else {
  prevL = flag & 0xff00;
  prevR = (flag & 0x00ff) << 8;
 }

 for (z=0;z<size;z+=1) {
  prevL= prevL + cin.sqrTable[from[z*2]];
  prevR = prevR + cin.sqrTable[from[z*2+1]];
  to[z] = (short)((prevL + prevR)/2);
 }

 return size;
}
