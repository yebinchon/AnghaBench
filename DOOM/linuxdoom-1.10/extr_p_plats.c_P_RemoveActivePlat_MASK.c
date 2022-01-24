#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  thinker; TYPE_1__* sector; } ;
typedef  TYPE_2__ plat_t ;
struct TYPE_5__ {int /*<<< orphan*/ * specialdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MAXPLATS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__** activeplats ; 

void FUNC2(plat_t* plat)
{
    int		i;
    for (i = 0;i < MAXPLATS;i++)
	if (plat == activeplats[i])
	{
	    (activeplats[i])->sector->specialdata = NULL;
	    FUNC1(&(activeplats[i])->thinker);
	    activeplats[i] = NULL;
	    
	    return;
	}
    FUNC0 ("P_RemoveActivePlat: can't find plat!");
}