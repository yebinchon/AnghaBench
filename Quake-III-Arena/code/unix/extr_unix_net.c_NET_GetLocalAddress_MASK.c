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
struct hostent {char** h_aliases; scalar_t__ h_addrtype; char** h_addr_list; int /*<<< orphan*/  h_name; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 size_t MAX_IPS ; 
 struct hostent* FUNC1 (char*) ; 
 int FUNC2 (char*,int) ; 
 char** localIP ; 
 int FUNC3 (int) ; 
 size_t numIP ; 

void FUNC4( void ) {
	char				hostname[256];
	struct hostent		*hostInfo;
	// int					error; // bk001204 - unused
	char				*p;
	int					ip;
	int					n;

	if ( FUNC2( hostname, 256 ) == -1 ) {
		return;
	}

	hostInfo = FUNC1( hostname );
	if ( !hostInfo ) {
		return;
	}

	FUNC0( "Hostname: %s\n", hostInfo->h_name );
	n = 0;
	while( ( p = hostInfo->h_aliases[n++] ) != NULL ) {
		FUNC0( "Alias: %s\n", p );
	}

	if ( hostInfo->h_addrtype != AF_INET ) {
		return;
	}

	numIP = 0;
	while( ( p = hostInfo->h_addr_list[numIP++] ) != NULL && numIP < MAX_IPS ) {
		ip = FUNC3( *(int *)p );
		localIP[ numIP ][0] = p[0];
		localIP[ numIP ][1] = p[1];
		localIP[ numIP ][2] = p[2];
		localIP[ numIP ][3] = p[3];
		FUNC0( "IP: %i.%i.%i.%i\n", ( ip >> 24 ) & 0xff, ( ip >> 16 ) & 0xff, ( ip >> 8 ) & 0xff, ip & 0xff );
	}
}