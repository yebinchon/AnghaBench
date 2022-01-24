#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int numfavoriteaddresses; int /*<<< orphan*/ * favoriteaddresses; } ;
struct TYPE_3__ {int /*<<< orphan*/  adrstr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 int MAX_INFO_STRING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ g_arenaservers ; 
 TYPE_1__* g_favoriteserverlist ; 
 int g_numfavoriteservers ; 

void FUNC4( void )
{
	int		i;
	int		j;
	char	info[MAX_INFO_STRING];

	// resync existing results with new or deleted cvars
	info[0] = '\0';
	FUNC2( info, "hostname", "No Response" );
	for (i=0; i<g_arenaservers.numfavoriteaddresses; i++)
	{
		// find favorite address in refresh list
		for (j=0; j<g_numfavoriteservers; j++)
			if (!FUNC3(g_arenaservers.favoriteaddresses[i],g_favoriteserverlist[j].adrstr))
				break;

		if ( j >= g_numfavoriteservers)
		{
			// not in list, add it
			FUNC0( g_arenaservers.favoriteaddresses[i], info, FUNC1() );
		}
	}
}