
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int io_count; TYPE_1__* io; } ;
struct TYPE_3__ {int name; } ;


 scalar_t__ strcmp (int ,char const*) ;
 TYPE_2__* video_layout_state ;

int video_layout_io_find(const char *name)
{
   int i;

   for (i = 0; i < video_layout_state->io_count; ++i)
   {
      if (strcmp(video_layout_state->io[i].name, name) == 0)
         return i;
   }

   return -1;
}
