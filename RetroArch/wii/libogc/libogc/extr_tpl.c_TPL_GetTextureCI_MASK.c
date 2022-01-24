#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
typedef  int s32 ;
struct TYPE_9__ {TYPE_1__* palhead; TYPE_2__* imghead; } ;
struct TYPE_8__ {int ntextures; scalar_t__ type; scalar_t__ tpl_file; scalar_t__ texdesc; } ;
struct TYPE_7__ {scalar_t__ maxlod; float lodbias; int /*<<< orphan*/  edgelod; int /*<<< orphan*/  minlod; int /*<<< orphan*/  magfilter; int /*<<< orphan*/  minfilter; int /*<<< orphan*/  wrapt; int /*<<< orphan*/  wraps; int /*<<< orphan*/  fmt; int /*<<< orphan*/  height; int /*<<< orphan*/  width; void* data; } ;
struct TYPE_6__ {int nitems; int /*<<< orphan*/  fmt; void* data; } ;
typedef  TYPE_1__ TPLPalHeader ;
typedef  TYPE_2__ TPLImgHeader ;
typedef  TYPE_3__ TPLFile ;
typedef  TYPE_4__ TPLDescHeader ;
typedef  int /*<<< orphan*/  GXTlutObj ;
typedef  int /*<<< orphan*/  GXTexObj ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 int /*<<< orphan*/  GX_DISABLE ; 
 int /*<<< orphan*/  GX_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PPC_CACHE_ALIGNMENT ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ TPL_FILE_TYPE_DISC ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int) ; 

s32 FUNC9(TPLFile *tdf,s32 id,GXTexObj *texObj,GXTlutObj *tlutObj,u8 tluts)
{
	s32 pos;
	u32 size;
	FILE *f = NULL;
	TPLDescHeader *deschead = NULL;
	TPLImgHeader *imghead = NULL;
	TPLPalHeader *palhead = NULL;
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

	size = FUNC4(imghead->width,imghead->height,imghead->fmt);
	if(tdf->type==TPL_FILE_TYPE_DISC) {
		f = (FILE*)tdf->tpl_file;
		pos = (s32)imghead->data;
		imghead->data = FUNC8(PPC_CACHE_ALIGNMENT,size);
		if(!imghead->data) return -1;

		FUNC7(f,pos,SEEK_SET);
		FUNC5(imghead->data,1,size,f);

		pos = (s32)palhead->data;
		palhead->data = FUNC8(PPC_CACHE_ALIGNMENT,(palhead->nitems*sizeof(u16)));
		if(!palhead->data) {
			FUNC6(imghead->data);
			return -1;
		}

		FUNC7(f,pos,SEEK_SET);
		FUNC5(palhead->data,1,(palhead->nitems*sizeof(u16)),f);
	}

	if(imghead->maxlod>0) bMipMap = 1;
	if(imghead->lodbias>0.0f) biasclamp = GX_ENABLE;

	FUNC0(imghead->data,size);
	FUNC0(palhead->data,(palhead->nitems*sizeof(u16)));
	FUNC3(tlutObj,palhead->data,palhead->fmt,palhead->nitems);
	FUNC1(texObj,imghead->data,imghead->width,imghead->height,imghead->fmt,imghead->wraps,imghead->wrapt,bMipMap,tluts);
	if(bMipMap) FUNC2(texObj,imghead->minfilter,imghead->magfilter,imghead->minlod,imghead->maxlod,
							     imghead->lodbias,biasclamp,biasclamp,imghead->edgelod);

	return 0;
}