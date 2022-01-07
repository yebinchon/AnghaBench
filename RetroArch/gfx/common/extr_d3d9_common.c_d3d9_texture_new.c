
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IDirect3DTexture9 {int dummy; } ;
typedef int PALETTEENTRY ;
typedef int LPDIRECT3DDEVICE9 ;
typedef scalar_t__ INT32 ;
typedef int D3DPOOL ;
typedef int D3DFORMAT ;


 unsigned int D3DUSAGE_AUTOGENMIPMAP ;
 scalar_t__ FAILED (int ) ;
 int IDirect3DDevice9_CreateTexture (int ,unsigned int,unsigned int,unsigned int,unsigned int,int ,int ,struct IDirect3DTexture9**,int *) ;
 void* d3d9_texture_new_from_file (void*,char const*,unsigned int,unsigned int,unsigned int,unsigned int,int ,int ,unsigned int,unsigned int,scalar_t__,void*,int *) ;

void *d3d9_texture_new(void *_dev,
      const char *path, unsigned width, unsigned height,
      unsigned miplevels, unsigned usage, INT32 format,
      INT32 pool, unsigned filter, unsigned mipfilter,
      INT32 color_key, void *src_info_data,
      PALETTEENTRY *palette, bool want_mipmap)
{
   LPDIRECT3DDEVICE9 dev = (LPDIRECT3DDEVICE9)_dev;
   void *buf = ((void*)0);

   if (path)
   {







      return ((void*)0);

   }


   if (want_mipmap)
      usage |= D3DUSAGE_AUTOGENMIPMAP;


   if (FAILED(IDirect3DDevice9_CreateTexture(dev,
               width, height, miplevels, usage,
               (D3DFORMAT)format,
               (D3DPOOL)pool,
               (struct IDirect3DTexture9**)&buf, ((void*)0))))
      return ((void*)0);
   return buf;
}
