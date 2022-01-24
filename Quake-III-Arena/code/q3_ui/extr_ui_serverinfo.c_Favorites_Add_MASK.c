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
typedef  int /*<<< orphan*/  serverbuff ;
typedef  int /*<<< orphan*/  adrstr ;

/* Variables and functions */
 int MAX_FAVORITESERVERS ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 char* FUNC3 (char*,int) ; 

void FUNC4( void )
{
	char	adrstr[128];
	char	serverbuff[128];
	int		i;
	int		best;

	FUNC2( "cl_currentServerAddress", serverbuff, sizeof(serverbuff) );
	if (!serverbuff[0])
		return;

	best = 0;
	for (i=0; i<MAX_FAVORITESERVERS; i++)
	{
		FUNC2( FUNC3("server%d",i+1), adrstr, sizeof(adrstr) );
		if (!FUNC0(serverbuff,adrstr))
		{
			// already in list
			return;
		}
		
		// use first empty or non-numeric available slot
		if ((adrstr[0]  < '0' || adrstr[0] > '9' ) && !best)
			best = i+1;
	}

	if (best)
		FUNC1( FUNC3("server%d",best), serverbuff);
}