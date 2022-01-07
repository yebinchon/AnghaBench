
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SceGxmRegionClipMode ;


 int _vita2d_context ;
 int sceGxmSetRegionClip (int ,int ,unsigned int,unsigned int,unsigned int,unsigned int) ;

void vita2d_set_region_clip(SceGxmRegionClipMode mode, unsigned int x_min, unsigned int y_min, unsigned int x_max, unsigned int y_max)
{
 sceGxmSetRegionClip(_vita2d_context, mode, x_min, y_min, x_max, y_max);
}
