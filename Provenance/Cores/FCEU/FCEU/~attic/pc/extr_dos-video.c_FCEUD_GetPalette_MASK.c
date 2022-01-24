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
typedef  size_t uint8 ;

/* Variables and functions */
 size_t* palettedbb ; 
 size_t* palettedbg ; 
 size_t* palettedbr ; 

void FUNC0(uint8 i, uint8 *r, uint8 *g, uint8 *b)
{
 *r=palettedbr[i];
 *g=palettedbg[i];
 *b=palettedbb[i];
}