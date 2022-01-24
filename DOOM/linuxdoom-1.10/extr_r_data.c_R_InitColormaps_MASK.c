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
 int /*<<< orphan*/  PU_STATIC ; 
 int FUNC0 (char*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * colormaps ; 

void FUNC4 (void)
{
    int	lump, length;
    
    // Load in the light tables, 
    //  256 byte align tables.
    lump = FUNC0("COLORMAP"); 
    length = FUNC1 (lump) + 255; 
    colormaps = FUNC3 (length, PU_STATIC, 0); 
    colormaps = (byte *)( ((int)colormaps + 255)&~0xff); 
    FUNC2 (lump,colormaps); 
}