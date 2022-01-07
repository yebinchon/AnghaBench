
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int width; unsigned int height; } ;
typedef TYPE_1__ VIDEOMODE_resolution_t ;
typedef size_t VIDEOMODE_MODE_t ;
struct TYPE_6__ {unsigned int min_h; unsigned int min_w; } ;


 size_t current_resolution ;
 TYPE_3__* display_modes ;
 TYPE_1__* resolutions ;
 unsigned int resolutions_size ;

__attribute__((used)) static VIDEOMODE_resolution_t *ResolutionForMode(VIDEOMODE_MODE_t mode, int rotate)
{
 unsigned int i;
 unsigned int w, h;
 if (rotate) {
  w = display_modes[mode].min_h;
  h = display_modes[mode].min_w;
 } else {
  w = display_modes[mode].min_w;
  h = display_modes[mode].min_h;
 }
 if (resolutions[current_resolution].width >= w &&
     resolutions[current_resolution].height >= h)

  return &resolutions[current_resolution];


 for (i = 0; i < resolutions_size; i ++) {
  if (resolutions[i].width >= w &&
      resolutions[i].height >= h)
   return &resolutions[i];
 }


 return ((void*)0);
}
