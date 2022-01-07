
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IDirect3DTexture8 {int dummy; } ;
typedef int PALETTEENTRY ;
typedef int LPDIRECT3DDEVICE8 ;
typedef scalar_t__ INT32 ;
typedef int D3DPOOL ;
typedef int D3DFORMAT ;


 scalar_t__ FAILED (int ) ;
 int IDirect3DDevice8_CreateTexture (int ,unsigned int,unsigned int,unsigned int,unsigned int,int ,int ,struct IDirect3DTexture8**) ;
 int _dev ;
 void* d3d8_texture_new_from_file (int ,char const*,unsigned int,unsigned int,unsigned int,unsigned int,int ,int ,unsigned int,unsigned int,scalar_t__,void*,int *) ;

void *d3d8_texture_new(LPDIRECT3DDEVICE8 dev,
      const char *path, unsigned width, unsigned height,
      unsigned miplevels, unsigned usage, INT32 format,
      INT32 pool, unsigned filter, unsigned mipfilter,
      INT32 color_key, void *src_info_data,
      PALETTEENTRY *palette, bool want_mipmap)
{
   void *buf = ((void*)0);

   if (path)
   {







      return ((void*)0);

   }

   if (FAILED(IDirect3DDevice8_CreateTexture(dev,
               width, height, miplevels, usage,
               (D3DFORMAT)format, (D3DPOOL)pool,
               (struct IDirect3DTexture8**)&buf)))
      return ((void*)0);

   return buf;
}
