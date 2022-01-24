#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int s32 ;
struct TYPE_7__ {TYPE_1__* imghead; } ;
struct TYPE_6__ {int ntextures; scalar_t__ type; scalar_t__ tpl_file; scalar_t__ texdesc; } ;
struct TYPE_5__ {scalar_t__ maxlod; float lodbias; int /*<<< orphan*/  edgelod; int /*<<< orphan*/  minlod; int /*<<< orphan*/  magfilter; int /*<<< orphan*/  minfilter; int /*<<< orphan*/  wrapt; int /*<<< orphan*/  wraps; int /*<<< orphan*/  fmt; int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ data; } ;
typedef  TYPE_1__ TPLImgHeader ;
typedef  TYPE_2__ TPLFile ;
typedef  TYPE_3__ TPLDescHeader ;
typedef  int /*<<< orphan*/  GXTexObj ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GX_DISABLE ; 
 int /*<<< orphan*/  GX_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PPC_CACHE_ALIGNMENT ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ TPL_FILE_TYPE_DISC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

s32 FUNC7(TPLFile *tdf,s32 id,GXTexObj *texObj)
{
	s32 pos;
	u32 size;
	FILE *f = NULL;
	TPLDescHeader *deschead = NULL;
	TPLImgHeader *imghead = NULL;
	s32 bMipMap = 0;
	u8 biasclamp = GX_DISABLE;

	if(!tdf) return -1;
	if(!texObj) return -1;
	if(id<0 || id>=tdf->ntextures) return -1;

	deschead = (TPLDescHeader*)tdf->texdesc;
	if(!deschead) return -1;

	imghead = deschead[id].imghead;
	if(!imghead) return -1;

	size = FUNC3(imghead->width,imghead->height,imghead->fmt);
	if(tdf->type==TPL_FILE_TYPE_DISC) {
		f = (FILE*)tdf->tpl_file;
		pos = (s32)imghead->data;
		imghead->data = FUNC6(PPC_CACHE_ALIGNMENT,size);
		if(!imghead->data) return -1;

		FUNC5(f,pos,SEEK_SET);
		FUNC4(imghead->data,1,size,f);
	}

	if(imghead->maxlod>0) bMipMap = 1;
	if(imghead->lodbias>0.0f) biasclamp = GX_ENABLE;

	FUNC0(imghead->data,size);
	FUNC1(texObj,imghead->data,imghead->width,imghead->height,imghead->fmt,imghead->wraps,imghead->wrapt,bMipMap);
	if(bMipMap) FUNC2(texObj,imghead->minfilter,imghead->magfilter,imghead->minlod,imghead->maxlod,
								 imghead->lodbias,biasclamp,biasclamp,imghead->edgelod);

	return 0;
}