
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int needs_restore; int video_info; } ;
typedef TYPE_1__ d3d8_video_t ;


 int RARCH_ERR (char*) ;
 int d3d8_deinitialize (TYPE_1__*) ;
 int d3d8_initialize (TYPE_1__*,int *) ;

__attribute__((used)) static bool d3d8_restore(void *data)
{
   d3d8_video_t *d3d = (d3d8_video_t*)data;

   if (!d3d)
      return 0;

   d3d8_deinitialize(d3d);

   if (!d3d8_initialize(d3d, &d3d->video_info))
   {
      RARCH_ERR("[D3D8]: Restore error.\n");
      return 0;
   }

   d3d->needs_restore = 0;

   return 1;
}
