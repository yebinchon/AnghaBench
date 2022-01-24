#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int /*<<< orphan*/  PU_CACHE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int** texturecolumnlump ; 
 int** texturecolumnofs ; 
 int /*<<< orphan*/ ** texturecomposite ; 
 int* texturewidthmask ; 

byte*
FUNC2
( int		tex,
  int		col )
{
    int		lump;
    int		ofs;
	
    col &= texturewidthmask[tex];
    lump = texturecolumnlump[tex][col];
    ofs = texturecolumnofs[tex][col];
    
    if (lump > 0)
	return (byte *)FUNC1(lump,PU_CACHE)+ofs;

    if (!texturecomposite[tex])
	FUNC0 (tex);

    return texturecomposite[tex] + ofs;
}