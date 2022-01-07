
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
jpeg_quality_scaling (int quality)




{

  if (quality <= 0) quality = 1;
  if (quality > 100) quality = 100;







  if (quality < 50)
    quality = 5000 / quality;
  else
    quality = 200 - quality*2;

  return quality;
}
