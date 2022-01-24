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
struct TYPE_2__ {scalar_t__ y; scalar_t__ x; } ;

/* Variables and functions */
 int LINEHEIGHT ; 
 TYPE_1__ LoadDef ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,char*) ; 
 int /*<<< orphan*/  PU_CACHE ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int load_end ; 
 size_t saveSlot ; 
 scalar_t__ saveStringEnter ; 
 char** savegamestrings ; 

void FUNC5(void)
{
    int             i;
	
    FUNC3 (72,28,0,FUNC4("M_SAVEG",PU_CACHE));
    for (i = 0;i < load_end; i++)
    {
	FUNC0(LoadDef.x,LoadDef.y+LINEHEIGHT*i);
	FUNC2(LoadDef.x,LoadDef.y+LINEHEIGHT*i,savegamestrings[i]);
    }
	
    if (saveStringEnter)
    {
	i = FUNC1(savegamestrings[saveSlot]);
	FUNC2(LoadDef.x + i,LoadDef.y+LINEHEIGHT*saveSlot,"_");
    }
}