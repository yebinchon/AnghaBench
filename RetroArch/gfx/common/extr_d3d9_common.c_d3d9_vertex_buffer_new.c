
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPDIRECT3DVERTEXBUFFER9 ;
typedef int LPDIRECT3DDEVICE9 ;
typedef scalar_t__ INT32 ;
typedef int D3DPOOL ;


 unsigned int D3DUSAGE_SOFTWAREPROCESSING ;
 scalar_t__ FAILED (int ) ;
 int IDirect3DDevice9_CreateVertexBuffer (int ,unsigned int,unsigned int,unsigned int,int ,int *,int *) ;
 scalar_t__ IDirect3DDevice9_GetSoftwareVertexProcessing (int ) ;

void *d3d9_vertex_buffer_new(void *_dev,
      unsigned length, unsigned usage,
      unsigned fvf, INT32 pool, void *handle)
{
   void *buf = ((void*)0);
   LPDIRECT3DDEVICE9 dev = (LPDIRECT3DDEVICE9)_dev;


   if (usage == 0)
      if (IDirect3DDevice9_GetSoftwareVertexProcessing(dev))
         usage = D3DUSAGE_SOFTWAREPROCESSING;


   if (FAILED(IDirect3DDevice9_CreateVertexBuffer(
               dev, length, usage, fvf,
               (D3DPOOL)pool,
               (LPDIRECT3DVERTEXBUFFER9*)&buf, ((void*)0))))
      return ((void*)0);

   return buf;
}
