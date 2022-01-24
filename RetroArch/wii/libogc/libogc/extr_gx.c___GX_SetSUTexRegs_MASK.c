#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_2__ {int genMode; int* tevRasOrder; int texCoordManually; int* tevTexMap; int tevTexCoordEnable; } ;

/* Variables and functions */
#define  GX_INDTEXSTAGE0 131 
#define  GX_INDTEXSTAGE1 130 
#define  GX_INDTEXSTAGE2 129 
#define  GX_INDTEXSTAGE3 128 
 int FUNC0 (int,int,int) ; 
 int FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 TYPE_1__* __gx ; 

__attribute__((used)) static void FUNC3()
{
	u32 i;
	u32 indtev,dirtev;
	u8 texcoord,texmap;
	u32 tevreg,tevm,texcm;

	dirtev = (FUNC1(__gx->genMode,10,4))+1;
	indtev = FUNC1(__gx->genMode,16,3);

	//indirect texture order
	for(i=0;i<indtev;i++) {
		switch(i) {
			case GX_INDTEXSTAGE0:
				texmap = __gx->tevRasOrder[2]&7;
				texcoord = FUNC1(__gx->tevRasOrder[2],3,3);
				break;
			case GX_INDTEXSTAGE1:
				texmap = FUNC1(__gx->tevRasOrder[2],6,3);
				texcoord = FUNC1(__gx->tevRasOrder[2],9,3);
				break;
			case GX_INDTEXSTAGE2:
				texmap = FUNC1(__gx->tevRasOrder[2],12,3);
				texcoord = FUNC1(__gx->tevRasOrder[2],15,3);
				break;
			case GX_INDTEXSTAGE3:
				texmap = FUNC1(__gx->tevRasOrder[2],18,3);
				texcoord = FUNC1(__gx->tevRasOrder[2],21,3);
				break;
			default:
				texmap = 0;
				texcoord = 0;
				break;
		}

		texcm = FUNC0(1,texcoord,1);
		if(!(__gx->texCoordManually&texcm))
			FUNC2(texmap,texcoord);
	}

	//direct texture order
	for(i=0;i<dirtev;i++) {
		tevreg = 3+(FUNC1(i,1,3));
		texmap = (__gx->tevTexMap[i]&0xff);

		if(i&1) texcoord = FUNC1(__gx->tevRasOrder[tevreg],15,3);
		else texcoord = FUNC1(__gx->tevRasOrder[tevreg],3,3);

		tevm = FUNC0(1,i,1);
		texcm = FUNC0(1,texcoord,1);
		if(texmap!=0xff && (__gx->tevTexCoordEnable&tevm) && !(__gx->texCoordManually&texcm)) {
			FUNC2(texmap,texcoord);
		}
	}
}