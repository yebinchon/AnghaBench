
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_4__* texture; } ;
struct TYPE_9__ {int init_history; TYPE_2__ frame; int device; TYPE_6__* shader_preset; } ;
typedef TYPE_3__ d3d10_video_t ;
struct TYPE_11__ {scalar_t__ history_size; } ;
struct TYPE_7__ {unsigned int Width; unsigned int Height; int Usage; int Format; } ;
struct TYPE_10__ {TYPE_1__ desc; } ;


 int assert (TYPE_6__*) ;
 int d3d10_init_texture (int ,TYPE_4__*) ;

__attribute__((used)) static void d3d10_init_history(d3d10_video_t* d3d10, unsigned width, unsigned height)
{
   unsigned i;





   assert(d3d10->shader_preset);
   for (i = 0; i < (unsigned)d3d10->shader_preset->history_size + 1; i++)
   {
      d3d10->frame.texture[i].desc.Width = width;
      d3d10->frame.texture[i].desc.Height = height;
      d3d10->frame.texture[i].desc.Format = d3d10->frame.texture[0].desc.Format;
      d3d10->frame.texture[i].desc.Usage = d3d10->frame.texture[0].desc.Usage;
      d3d10_init_texture(d3d10->device, &d3d10->frame.texture[i]);

   }
   d3d10->init_history = 0;
}
