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
typedef  int /*<<< orphan*/  plat_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MAXPLATS ; 
 int /*<<< orphan*/ ** activeplats ; 

void FUNC1(plat_t* plat)
{
    int		i;
    
    for (i = 0;i < MAXPLATS;i++)
	if (activeplats[i] == NULL)
	{
	    activeplats[i] = plat;
	    return;
	}
    FUNC0 ("P_AddActivePlat: no more plats!");
}