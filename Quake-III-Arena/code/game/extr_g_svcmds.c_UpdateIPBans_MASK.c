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
typedef  int /*<<< orphan*/  iplist_final ;
typedef  int /*<<< orphan*/  ip ;
typedef  int byte ;
struct TYPE_2__ {int compare; unsigned int mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MAX_CVAR_VALUE_STRING ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 TYPE_1__* ipFilters ; 
 int numIPFilters ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (char*,int) ; 

__attribute__((used)) static void FUNC5 (void)
{
	byte	b[4];
	byte	m[4];
	int		i,j;
	char	iplist_final[MAX_CVAR_VALUE_STRING];
	char	ip[64];

	*iplist_final = 0;
	for (i = 0 ; i < numIPFilters ; i++)
	{
		if (ipFilters[i].compare == 0xffffffff)
			continue;

		*(unsigned *)b = ipFilters[i].compare;
		*(unsigned *)m = ipFilters[i].mask;
		*ip = 0;
		for (j = 0 ; j < 4 ; j++)
		{
			if (m[j]!=255)
				FUNC1(ip, sizeof(ip), "*");
			else
				FUNC1(ip, sizeof(ip), FUNC4("%i", b[j]));
			FUNC1(ip, sizeof(ip), (j<3) ? "." : " ");
		}		
		if (FUNC2(iplist_final)+FUNC2(ip) < MAX_CVAR_VALUE_STRING)
		{
			FUNC1( iplist_final, sizeof(iplist_final), ip);
		}
		else
		{
			FUNC0("g_banIPs overflowed at MAX_CVAR_VALUE_STRING\n");
			break;
		}
	}

	FUNC3( "g_banIPs", iplist_final );
}