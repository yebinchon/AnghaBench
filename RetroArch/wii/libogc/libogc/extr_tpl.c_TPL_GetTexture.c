
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int s32 ;
struct TYPE_7__ {TYPE_1__* imghead; } ;
struct TYPE_6__ {int ntextures; scalar_t__ type; scalar_t__ tpl_file; scalar_t__ texdesc; } ;
struct TYPE_5__ {scalar_t__ maxlod; float lodbias; int edgelod; int minlod; int magfilter; int minfilter; int wrapt; int wraps; int fmt; int height; int width; scalar_t__ data; } ;
typedef TYPE_1__ TPLImgHeader ;
typedef TYPE_2__ TPLFile ;
typedef TYPE_3__ TPLDescHeader ;
typedef int GXTexObj ;
typedef int FILE ;


 int DCFlushRange (scalar_t__,int ) ;
 int GX_DISABLE ;
 int GX_ENABLE ;
 int GX_InitTexObj (int *,scalar_t__,int ,int ,int ,int ,int ,int) ;
 int GX_InitTexObjLOD (int *,int ,int ,int ,scalar_t__,float,int ,int ,int ) ;
 int PPC_CACHE_ALIGNMENT ;
 int SEEK_SET ;
 scalar_t__ TPL_FILE_TYPE_DISC ;
 int TPL_GetTextureSize (int ,int ,int ) ;
 int fread (scalar_t__,int,int ,int *) ;
 int fseek (int *,int,int ) ;
 scalar_t__ memalign (int ,int ) ;

s32 TPL_GetTexture(TPLFile *tdf,s32 id,GXTexObj *texObj)
{
 s32 pos;
 u32 size;
 FILE *f = ((void*)0);
 TPLDescHeader *deschead = ((void*)0);
 TPLImgHeader *imghead = ((void*)0);
 s32 bMipMap = 0;
 u8 biasclamp = GX_DISABLE;

 if(!tdf) return -1;
 if(!texObj) return -1;
 if(id<0 || id>=tdf->ntextures) return -1;

 deschead = (TPLDescHeader*)tdf->texdesc;
 if(!deschead) return -1;

 imghead = deschead[id].imghead;
 if(!imghead) return -1;

 size = TPL_GetTextureSize(imghead->width,imghead->height,imghead->fmt);
 if(tdf->type==TPL_FILE_TYPE_DISC) {
  f = (FILE*)tdf->tpl_file;
  pos = (s32)imghead->data;
  imghead->data = memalign(PPC_CACHE_ALIGNMENT,size);
  if(!imghead->data) return -1;

  fseek(f,pos,SEEK_SET);
  fread(imghead->data,1,size,f);
 }

 if(imghead->maxlod>0) bMipMap = 1;
 if(imghead->lodbias>0.0f) biasclamp = GX_ENABLE;

 DCFlushRange(imghead->data,size);
 GX_InitTexObj(texObj,imghead->data,imghead->width,imghead->height,imghead->fmt,imghead->wraps,imghead->wrapt,bMipMap);
 if(bMipMap) GX_InitTexObjLOD(texObj,imghead->minfilter,imghead->magfilter,imghead->minlod,imghead->maxlod,
         imghead->lodbias,biasclamp,biasclamp,imghead->edgelod);

 return 0;
}
