
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
typedef int s32 ;
struct TYPE_7__ {TYPE_1__* imghead; } ;
struct TYPE_6__ {int ntextures; scalar_t__ texdesc; } ;
struct TYPE_5__ {int height; int width; int fmt; } ;
typedef TYPE_1__ TPLImgHeader ;
typedef TYPE_2__ TPLFile ;
typedef TYPE_3__ TPLDescHeader ;



s32 TPL_GetTextureInfo(TPLFile *tdf,s32 id,u32 *fmt,u16 *width,u16 *height)
{
 TPLDescHeader *deschead = ((void*)0);
 TPLImgHeader *imghead = ((void*)0);

 if(!tdf) return -1;
 if(id<0 || id>=tdf->ntextures) return -1;

 deschead = (TPLDescHeader*)tdf->texdesc;
 if(!deschead) return -1;

 imghead = deschead[id].imghead;
 if(!imghead) return -1;

 if(fmt) *fmt = imghead->fmt;
 if(width) *width = imghead->width;
 if(height) *height = imghead->height;

 return 0;
}
