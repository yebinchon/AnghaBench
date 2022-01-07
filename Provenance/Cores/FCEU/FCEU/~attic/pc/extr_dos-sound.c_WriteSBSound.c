
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int int32 ;
typedef int int16 ;


 size_t ReadPtr ;
 int* WaveBuffer ;
 size_t WritePtr ;
 int format ;
 int fragtotal ;

void WriteSBSound(int32 *Buffer, int Count, int NoBlocking)
{
 int x;

 if(!format)
 {
   for(x=0;x<Count;x++)
   {
    while(WritePtr==ReadPtr)
     if(NoBlocking)
      return;
    WaveBuffer[WritePtr]=(uint8)((Buffer[x])>>8)^128;
    WritePtr=(WritePtr+1)&(fragtotal-1);
   }
 }
 else
 {
   for(x=0;x<Count;x++)
   {
    while(WritePtr==ReadPtr)
     if(NoBlocking)
      return;
    ((int16 *)WaveBuffer)[WritePtr]=Buffer[x];
    WritePtr=(WritePtr+1)&(fragtotal-1);
   }
 }
}
