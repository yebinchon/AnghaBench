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
typedef  int /*<<< orphan*/  patch_t ;

/* Variables and functions */
 int HU_FONTSIZE ; 
 int HU_FONTSTART ; 
 int /*<<< orphan*/  PU_STATIC ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  english_shiftxform ; 
 scalar_t__ french ; 
 int /*<<< orphan*/  french_shiftxform ; 
 int /*<<< orphan*/ ** hu_font ; 
 int /*<<< orphan*/  shiftxform ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 

void FUNC2(void)
{

    int		i;
    int		j;
    char	buffer[9];

    if (french)
	shiftxform = french_shiftxform;
    else
	shiftxform = english_shiftxform;

    // load the heads-up font
    j = HU_FONTSTART;
    for (i=0;i<HU_FONTSIZE;i++)
    {
	FUNC1(buffer, "STCFN%.3d", j++);
	hu_font[i] = (patch_t *) FUNC0(buffer, PU_STATIC);
    }

}