#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int patchcount; int width; int /*<<< orphan*/  height; TYPE_2__* patches; } ;
typedef  TYPE_1__ texture_t ;
struct TYPE_7__ {int originx; int /*<<< orphan*/  originy; int /*<<< orphan*/  patch; } ;
typedef  TYPE_2__ texpatch_t ;
struct TYPE_8__ {int /*<<< orphan*/ * columnofs; int /*<<< orphan*/  width; } ;
typedef  TYPE_3__ patch_t ;
typedef  int /*<<< orphan*/  column_t ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PU_CACHE ; 
 int /*<<< orphan*/  PU_STATIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 short** texturecolumnlump ; 
 unsigned short** texturecolumnofs ; 
 int /*<<< orphan*/ * texturecomposite ; 
 int /*<<< orphan*/ * texturecompositesize ; 
 TYPE_1__** textures ; 

void FUNC6 (int texnum)
{
    byte*		block;
    texture_t*		texture;
    texpatch_t*		patch;	
    patch_t*		realpatch;
    int			x;
    int			x1;
    int			x2;
    int			i;
    column_t*		patchcol;
    short*		collump;
    unsigned short*	colofs;
	
    texture = textures[texnum];

    block = FUNC5 (texturecompositesize[texnum],
		      PU_STATIC, 
		      &texturecomposite[texnum]);	

    collump = texturecolumnlump[texnum];
    colofs = texturecolumnofs[texnum];
    
    // Composite the columns together.
    patch = texture->patches;
		
    for (i=0 , patch = texture->patches;
	 i<texture->patchcount;
	 i++, patch++)
    {
	realpatch = FUNC3 (patch->patch, PU_CACHE);
	x1 = patch->originx;
	x2 = x1 + FUNC2(realpatch->width);

	if (x1<0)
	    x = 0;
	else
	    x = x1;
	
	if (x2 > texture->width)
	    x2 = texture->width;

	for ( ; x<x2 ; x++)
	{
	    // Column does not have multiple patches?
	    if (collump[x] >= 0)
		continue;
	    
	    patchcol = (column_t *)((byte *)realpatch
				    + FUNC0(realpatch->columnofs[x-x1]));
	    FUNC1 (patchcol,
				 block + colofs[x],
				 patch->originy,
				 texture->height);
	}
						
    }

    // Now that the texture has been built in column cache,
    //  it is purgable from zone memory.
    FUNC4 (block, PU_CACHE);
}