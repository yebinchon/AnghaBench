
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * Clut; int * Mem; } ;
typedef TYPE_1__ GSTEXTURE ;


 int free (int *) ;

__attribute__((used)) static void deinit_texture(GSTEXTURE *texture)
{
   if (texture->Mem!= ((void*)0)) {
      free(texture->Mem);
      texture->Mem = ((void*)0);
   }

   if (texture->Mem!= ((void*)0)) {
      free(texture->Clut);
      texture->Clut = ((void*)0);
   }
}
