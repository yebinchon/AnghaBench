
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int WIIU_WIIMOTE_CHANNELS ;
 unsigned int* channel_slot_map ;

__attribute__((used)) static int to_wiimote_channel(unsigned pad)
{
   unsigned i;

   for(i = 0; i < WIIU_WIIMOTE_CHANNELS; i++)
      if(channel_slot_map[i] == pad)
         return i;

   return -1;
}
