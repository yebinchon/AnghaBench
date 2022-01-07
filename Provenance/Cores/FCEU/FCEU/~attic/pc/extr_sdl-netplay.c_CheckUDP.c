
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef scalar_t__ uint32 ;
typedef scalar_t__ int32 ;


 scalar_t__ FCEUI_CRC32 (int ,int *,scalar_t__) ;
 scalar_t__ de32 (int *) ;
 scalar_t__ incounter ;
 scalar_t__ magic ;

__attribute__((used)) static int CheckUDP(uint8 *packet, int32 len, int32 alt)
{
 uint32 crc;
 uint32 repcrc;

 crc=FCEUI_CRC32(0,packet+4,len+8);
 repcrc=de32(packet);

 if(crc!=repcrc) return(0);
  packet+=4;

 if(de32(packet)!=magic)
  return(0);

 packet+=4;
 if(alt)
 {
  if(de32(packet)<incounter)
   return(0);
 }
 else
  if(de32(packet)!=incounter)
   return(0);
 return(1);
}
