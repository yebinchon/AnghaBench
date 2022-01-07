
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void** displayBufferData ;
 size_t frontBufferIndex ;

void *vita2d_get_current_fb()
{
 return displayBufferData[frontBufferIndex];
}
