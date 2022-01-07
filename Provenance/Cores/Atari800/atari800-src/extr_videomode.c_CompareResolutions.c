
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int width; int height; } ;
typedef TYPE_1__ VIDEOMODE_resolution_t ;



__attribute__((used)) static int CompareResolutions(const void *res1, const void *res2)
{
 unsigned int w = ((const VIDEOMODE_resolution_t *)res1)->width - ((const VIDEOMODE_resolution_t *)res2)->width;
 if (w != 0)
  return w;
 return ((const VIDEOMODE_resolution_t *)res1)->height - ((const VIDEOMODE_resolution_t *)res2)->height;
}
