
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * Clut; int * Mem; } ;
typedef TYPE_1__ GSTEXTURE ;



__attribute__((used)) static void deinitTexture(GSTEXTURE *texture)
{
   texture->Mem = ((void*)0);
   texture->Clut = ((void*)0);
}
