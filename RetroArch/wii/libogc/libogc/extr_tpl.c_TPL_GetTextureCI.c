
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
typedef int s32 ;
struct TYPE_9__ {TYPE_1__* palhead; TYPE_2__* imghead; } ;
struct TYPE_8__ {int ntextures; scalar_t__ type; scalar_t__ tpl_file; scalar_t__ texdesc; } ;
struct TYPE_7__ {scalar_t__ maxlod; float lodbias; int edgelod; int minlod; int magfilter; int minfilter; int wrapt; int wraps; int fmt; int height; int width; void* data; } ;
struct TYPE_6__ {int nitems; int fmt; void* data; } ;
typedef TYPE_1__ TPLPalHeader ;
typedef TYPE_2__ TPLImgHeader ;
typedef TYPE_3__ TPLFile ;
typedef TYPE_4__ TPLDescHeader ;
typedef int GXTlutObj ;
typedef int GXTexObj ;
typedef int FILE ;


 int DCFlushRange (void*,int) ;
 int GX_DISABLE ;
 int GX_ENABLE ;
 int GX_InitTexObjCI (int *,void*,int ,int ,int ,int ,int ,int,int ) ;
 int GX_InitTexObjLOD (int *,int ,int ,int ,scalar_t__,float,int ,int ,int ) ;
 int GX_InitTlutObj (int *,void*,int ,int) ;
 int PPC_CACHE_ALIGNMENT ;
 int SEEK_SET ;
 scalar_t__ TPL_FILE_TYPE_DISC ;
 int TPL_GetTextureSize (int ,int ,int ) ;
 int fread (void*,int,int,int *) ;
 int free (void*) ;
 int fseek (int *,int,int ) ;
 void* memalign (int ,int) ;

s32 TPL_GetTextureCI(TPLFile *tdf,s32 id,GXTexObj *texObj,GXTlutObj *tlutObj,u8 tluts)
{
 s32 pos;
 u32 size;
 FILE *f = ((void*)0);
 TPLDescHeader *deschead = ((void*)0);
 TPLImgHeader *imghead = ((void*)0);
 TPLPalHeader *palhead = ((void*)0);
 s32 bMipMap = 0;
 u8 biasclamp = GX_DISABLE;

 if(!tdf) return -1;
 if(!texObj) return -1;
 if(!tlutObj) return -1;
  if(id<0 || id>=tdf->ntextures) return -1;

 deschead = (TPLDescHeader*)tdf->texdesc;
 if(!deschead) return -1;

 imghead = deschead[id].imghead;
 if(!imghead) return -1;

 palhead = deschead[id].palhead;
 if(!palhead) return -1;

 size = TPL_GetTextureSize(imghead->width,imghead->height,imghead->fmt);
 if(tdf->type==TPL_FILE_TYPE_DISC) {
  f = (FILE*)tdf->tpl_file;
  pos = (s32)imghead->data;
  imghead->data = memalign(PPC_CACHE_ALIGNMENT,size);
  if(!imghead->data) return -1;

  fseek(f,pos,SEEK_SET);
  fread(imghead->data,1,size,f);

  pos = (s32)palhead->data;
  palhead->data = memalign(PPC_CACHE_ALIGNMENT,(palhead->nitems*sizeof(u16)));
  if(!palhead->data) {
   free(imghead->data);
   return -1;
  }

  fseek(f,pos,SEEK_SET);
  fread(palhead->data,1,(palhead->nitems*sizeof(u16)),f);
 }

 if(imghead->maxlod>0) bMipMap = 1;
 if(imghead->lodbias>0.0f) biasclamp = GX_ENABLE;

 DCFlushRange(imghead->data,size);
 DCFlushRange(palhead->data,(palhead->nitems*sizeof(u16)));
 GX_InitTlutObj(tlutObj,palhead->data,palhead->fmt,palhead->nitems);
 GX_InitTexObjCI(texObj,imghead->data,imghead->width,imghead->height,imghead->fmt,imghead->wraps,imghead->wrapt,bMipMap,tluts);
 if(bMipMap) GX_InitTexObjLOD(texObj,imghead->minfilter,imghead->magfilter,imghead->minlod,imghead->maxlod,
            imghead->lodbias,biasclamp,biasclamp,imghead->edgelod);

 return 0;
}
