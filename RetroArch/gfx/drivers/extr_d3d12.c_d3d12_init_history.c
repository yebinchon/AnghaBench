
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_5__* texture; } ;
struct TYPE_9__ {int srv_heap; } ;
struct TYPE_11__ {int init_history; TYPE_3__ frame; int device; TYPE_2__ desc; TYPE_7__* shader_preset; } ;
typedef TYPE_4__ d3d12_video_t ;
struct TYPE_13__ {scalar_t__ history_size; } ;
struct TYPE_8__ {unsigned int Width; unsigned int Height; int MipLevels; int Format; } ;
struct TYPE_12__ {int * srv_heap; TYPE_1__ desc; } ;


 int assert (TYPE_7__*) ;
 int d3d12_init_texture (int ,TYPE_5__*) ;

__attribute__((used)) static void d3d12_init_history(d3d12_video_t* d3d12, unsigned width, unsigned height)
{
   unsigned i;





   assert(d3d12->shader_preset);
   for (i = 0; i < (unsigned)d3d12->shader_preset->history_size + 1; i++)
   {
      d3d12->frame.texture[i].desc.Width = width;
      d3d12->frame.texture[i].desc.Height = height;
      d3d12->frame.texture[i].desc.Format = d3d12->frame.texture[0].desc.Format;
      d3d12->frame.texture[i].desc.MipLevels = d3d12->frame.texture[0].desc.MipLevels;
      d3d12->frame.texture[i].srv_heap = &d3d12->desc.srv_heap;
      d3d12_init_texture(d3d12->device, &d3d12->frame.texture[i]);

   }
   d3d12->init_history = 0;
}
