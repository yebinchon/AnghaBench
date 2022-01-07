
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ w; scalar_t__ h; } ;
typedef TYPE_1__ video_layout_bounds_t ;



bool bounds_valid(const video_layout_bounds_t *bounds)
{
   return (bounds->w > 0 && bounds->h > 0);
}
