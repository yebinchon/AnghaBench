
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Width; int Height; int PSM; int Filter; void* Mem; } ;
typedef TYPE_1__ GSTEXTURE ;



__attribute__((used)) static void transfer_texture(GSTEXTURE *texture, const void *frame,
      int width, int height, int PSM, int filter, bool color_correction)
{
   texture->Width = width;
   texture->Height = height;
   texture->PSM = PSM;
   texture->Filter = filter;
   texture->Mem = (void *)frame;
}
