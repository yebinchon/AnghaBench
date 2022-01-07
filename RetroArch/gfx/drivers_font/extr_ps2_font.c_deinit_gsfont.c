
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* TexBase; int Texture; } ;
typedef TYPE_1__ GSFONTM ;


 int deinit_texture (int ) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void deinit_gsfont(GSFONTM *gsFontM)
{
   deinit_texture(gsFontM->Texture);
   free(gsFontM->TexBase);
   gsFontM->TexBase = ((void*)0);
   free(gsFontM);
}
