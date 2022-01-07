
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPDIRECT3DTEXTURE9 ;


 int d3d9_texture_free (scalar_t__) ;

__attribute__((used)) static void d3d9_unload_texture(void *data, uintptr_t id)
{
   LPDIRECT3DTEXTURE9 texid;
   if (!id)
      return;

   texid = (LPDIRECT3DTEXTURE9)id;
   d3d9_texture_free(texid);
}
