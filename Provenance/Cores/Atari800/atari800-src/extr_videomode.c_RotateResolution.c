
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int width; unsigned int height; } ;
typedef TYPE_1__ VIDEOMODE_resolution_t ;



__attribute__((used)) static void RotateResolution(VIDEOMODE_resolution_t *res)
{
 unsigned int tmp = res->width;
 res->width = res->height;
 res->height = tmp;
}
