
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Width; int Height; int PSM; } ;
typedef TYPE_1__ GSTEXTURE ;



__attribute__((used)) static bool texture_need_prepare(GSTEXTURE *texture, int width, int height, int PSM)
{
   return texture->Width != width || texture->Height != height || texture->PSM != PSM;
}
