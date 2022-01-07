
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int address; } ;
typedef TYPE_1__ vita2d_display_data ;


 size_t DISPLAY_BUFFER_COUNT ;
 size_t backBufferIndex ;
 int * displayBufferData ;
 int * displayBufferSync ;
 int * displaySurface ;
 size_t frontBufferIndex ;
 int sceGxmDisplayQueueAddEntry (int ,int ,TYPE_1__*) ;
 int sceGxmPadHeartbeat (int *,int ) ;

void vita2d_swap_buffers()
{
 sceGxmPadHeartbeat(&displaySurface[backBufferIndex], displayBufferSync[backBufferIndex]);


 vita2d_display_data displayData;
 displayData.address = displayBufferData[backBufferIndex];
 sceGxmDisplayQueueAddEntry(
  displayBufferSync[frontBufferIndex],
  displayBufferSync[backBufferIndex],
  &displayData);


 frontBufferIndex = backBufferIndex;
 backBufferIndex = (backBufferIndex + 1) % DISPLAY_BUFFER_COUNT;
}
