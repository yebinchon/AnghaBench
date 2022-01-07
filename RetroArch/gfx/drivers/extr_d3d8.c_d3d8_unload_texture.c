
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPDIRECT3DTEXTURE8 ;


 int d3d8_texture_free (scalar_t__) ;

__attribute__((used)) static void d3d8_unload_texture(void *data, uintptr_t id)
{
   LPDIRECT3DTEXTURE8 texid;
   if (!id)
    return;

   texid = (LPDIRECT3DTEXTURE8)id;
   d3d8_texture_free(texid);
}
