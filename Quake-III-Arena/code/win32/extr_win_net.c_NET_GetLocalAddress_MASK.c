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
 scalar_t__ SOCKET_ERROR ; 
 int FUNC1 () ; 
 struct hostent* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 char** localIP ; 
 int FUNC4 (int) ; 
 size_t numIP ; 

void FUNC5( void ) {
	char				hostname[256];
	struct hostent		*hostInfo;
	int					error;
	char				*p;
	int					ip;
	int					n;

	if( FUNC3( hostname, 256 ) == SOCKET_ERROR ) {
		error = FUNC1();
		return;
	}

	hostInfo = FUNC2( hostname );
	if( !hostInfo ) {
		error = FUNC1();
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
	while( ( p = hostInfo->h_addr_list[numIP] ) != NULL && numIP < MAX_IPS ) {
		ip = FUNC4( *(int *)p );
		localIP[ numIP ][0] = p[0];
		localIP[ numIP ][1] = p[1];
		localIP[ numIP ][2] = p[2];
		localIP[ numIP ][3] = p[3];
		FUNC0( "IP: %i.%i.%i.%i\n", ( ip >> 24 ) & 0xff, ( ip >> 16 ) & 0xff, ( ip >> 8 ) & 0xff, ip & 0xff );
		numIP++;
	}
}