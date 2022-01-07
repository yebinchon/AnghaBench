
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
 int cmd ;
 int frame_offset ;
 int htonl (int ) ;
 int ntohl (int ) ;
 int * payload ;

uint32_t frame_offset_cmd(bool ntoh)
{
   uint32_t frame = 0;

   switch (cmd)
   {
      case 132:
      case 129:
      case 130:
      case 133:
      case 131:
      case 128:
         frame = ntohl(payload[0]);
         if (ntoh)
            frame -= frame_offset;
         else
            frame += frame_offset;
         payload[0] = htonl(frame);
         break;
   }

   return frame;
}
