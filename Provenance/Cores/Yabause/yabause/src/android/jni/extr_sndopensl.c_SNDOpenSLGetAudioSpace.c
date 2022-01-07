
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 size_t currentpos ;
 int mbufferSizeInBytes ;
 int* soundoffset ;

__attribute__((used)) static u32 SNDOpenSLGetAudioSpace(void)
{



   int val = (mbufferSizeInBytes-soundoffset[currentpos]);
   if( val < 0 ) return 0;
   return val;
}
