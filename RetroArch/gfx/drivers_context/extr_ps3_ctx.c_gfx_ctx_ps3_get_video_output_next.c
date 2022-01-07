
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int idx; int id; } ;
struct TYPE_9__ {int count; TYPE_1__ current; int * list; } ;
struct TYPE_8__ {TYPE_3__ resolutions; } ;
struct TYPE_10__ {TYPE_2__ screen; } ;
struct TYPE_11__ {TYPE_4__ console; } ;
typedef TYPE_5__ global_t ;


 TYPE_5__* global_get_ptr () ;

__attribute__((used)) static void gfx_ctx_ps3_get_video_output_next(void *data)
{
   global_t *global = global_get_ptr();

   if (!global)
      return;

   if (global->console.screen.resolutions.current.idx + 1 <
         global->console.screen.resolutions.count)
   {
      global->console.screen.resolutions.current.idx++;
      global->console.screen.resolutions.current.id =
         global->console.screen.resolutions.list
         [global->console.screen.resolutions.current.idx];
   }
}
