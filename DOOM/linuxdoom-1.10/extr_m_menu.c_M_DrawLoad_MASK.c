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
struct TYPE_2__ {scalar_t__ y; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 int LINEHEIGHT ; 
 TYPE_1__ LoadDef ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PU_CACHE ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int load_end ; 
 int /*<<< orphan*/ * savegamestrings ; 

void FUNC4(void)
{
    int             i;
	
    FUNC2 (72,28,0,FUNC3("M_LOADG",PU_CACHE));
    for (i = 0;i < load_end; i++)
    {
	FUNC0(LoadDef.x,LoadDef.y+LINEHEIGHT*i);
	FUNC1(LoadDef.x,LoadDef.y+LINEHEIGHT*i,savegamestrings[i]);
    }
}