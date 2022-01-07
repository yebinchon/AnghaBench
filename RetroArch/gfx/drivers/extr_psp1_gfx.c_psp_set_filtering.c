
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tex_filter; } ;
typedef TYPE_1__ psp1_video_t ;


 int GU_LINEAR ;
 int GU_NEAREST ;

__attribute__((used)) static void psp_set_filtering(void *data, unsigned index, bool smooth)
{
   psp1_video_t *psp = (psp1_video_t*)data;

   if (psp)
      psp->tex_filter = smooth? GU_LINEAR : GU_NEAREST;
}
