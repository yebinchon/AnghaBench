#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int stbi_uc ;
struct TYPE_2__ {int size; int type; int channel; } ;
typedef  TYPE_1__ stbi__pic_packet ;
typedef  int /*<<< orphan*/  stbi__context ;
typedef  int /*<<< orphan*/  packets ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int*,int*) ; 
 int* FUNC2 (char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int*) ; 

__attribute__((used)) static stbi_uc *FUNC6(stbi__context *s,int width,int height,int *comp, stbi_uc *result)
{
   int act_comp=0,num_packets=0,y,chained;
   stbi__pic_packet packets[10];

   // this will (should...) cater for even some bizarre stuff like having data
    // for the same channel in multiple packets.
   do {
      stbi__pic_packet *packet;

      if (num_packets==sizeof(packets)/sizeof(packets[0]))
         return FUNC2("bad format","too many packets");

      packet = &packets[num_packets++];

      chained = FUNC4(s);
      packet->size    = FUNC4(s);
      packet->type    = FUNC4(s);
      packet->channel = FUNC4(s);

      act_comp |= packet->channel;

      if (FUNC0(s))          return FUNC2("bad file","file too short (reading packets)");
      if (packet->size != 8)  return FUNC2("bad format","packet isn't 8bpp");
   } while (chained);

   *comp = (act_comp & 0x10 ? 4 : 3); // has alpha channel?

   for(y=0; y<height; ++y) {
      int packet_idx;

      for(packet_idx=0; packet_idx < num_packets; ++packet_idx) {
         stbi__pic_packet *packet = &packets[packet_idx];
         stbi_uc *dest = result+y*width*4;

         switch (packet->type) {
            default:
               return FUNC2("bad format","packet has bad compression type");

            case 0: {//uncompressed
               int x;

               for(x=0;x<width;++x, dest+=4)
                  if (!FUNC5(s,packet->channel,dest))
                     return 0;
               break;
            }

            case 1://Pure RLE
               {
                  int left=width, i;

                  while (left>0) {
                     stbi_uc count,value[4];

                     count=FUNC4(s);
                     if (FUNC0(s))   return FUNC2("bad file","file too short (pure read count)");

                     if (count > left)
                        count = (stbi_uc) left;

                     if (!FUNC5(s,packet->channel,value))  return 0;

                     for(i=0; i<count; ++i,dest+=4)
                        FUNC1(packet->channel,dest,value);
                     left -= count;
                  }
               }
               break;

            case 2: {//Mixed RLE
               int left=width;
               while (left>0) {
                  int count = FUNC4(s), i;
                  if (FUNC0(s))  return FUNC2("bad file","file too short (mixed read count)");

                  if (count >= 128) { // Repeated
                     stbi_uc value[4];

                     if (count==128)
                        count = FUNC3(s);
                     else
                        count -= 127;
                     if (count > left)
                        return FUNC2("bad file","scanline overrun");

                     if (!FUNC5(s,packet->channel,value))
                        return 0;

                     for(i=0;i<count;++i, dest += 4)
                        FUNC1(packet->channel,dest,value);
                  } else { // Raw
                     ++count;
                     if (count>left) return FUNC2("bad file","scanline overrun");

                     for(i=0;i<count;++i, dest+=4)
                        if (!FUNC5(s,packet->channel,dest))
                           return 0;
                  }
                  left-=count;
               }
               break;
            }
         }
      }
   }

   return result;
}