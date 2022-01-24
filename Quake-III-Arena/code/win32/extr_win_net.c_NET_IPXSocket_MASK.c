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
struct sockaddr_ipx {scalar_t__ sa_socket; int /*<<< orphan*/  sa_nodenum; int /*<<< orphan*/  sa_netnum; int /*<<< orphan*/  sa_family; } ;
typedef  int /*<<< orphan*/  address ;
typedef  int /*<<< orphan*/  _true ;
typedef  int SOCKET ;

/* Variables and functions */
 int /*<<< orphan*/  AF_IPX ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FIONBIO ; 
 int INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  NSPROTO_IPX ; 
 int PORT_ANY ; 
 scalar_t__ SOCKET_ERROR ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_BROADCAST ; 
 int WSAEAFNOSUPPORT ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (int,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (short) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10( int port ) {
	SOCKET				newsocket;
	struct sockaddr_ipx	address;
	int					_true = 1;
	int					err;

	if( ( newsocket = FUNC9( AF_IPX, SOCK_DGRAM, NSPROTO_IPX ) ) == INVALID_SOCKET ) {
		err = FUNC2();
		if (err != WSAEAFNOSUPPORT) {
			FUNC0( "WARNING: IPX_Socket: socket: %s\n", FUNC1() );
		}
		return 0;
	}

	// make it non-blocking
	if( FUNC6( newsocket, FIONBIO, &_true ) == SOCKET_ERROR ) {
		FUNC0( "WARNING: IPX_Socket: ioctl FIONBIO: %s\n", FUNC1() );
		return 0;
	}

	// make it broadcast capable
	if( FUNC8( newsocket, SOL_SOCKET, SO_BROADCAST, (char *)&_true, sizeof( _true ) ) == SOCKET_ERROR ) {
		FUNC0( "WARNING: IPX_Socket: setsockopt SO_BROADCAST: %s\n", FUNC1() );
		return 0;
	}

	address.sa_family = AF_IPX;
	FUNC7( address.sa_netnum, 0, 4 );
	FUNC7( address.sa_nodenum, 0, 6 );
	if( port == PORT_ANY ) {
		address.sa_socket = 0;
	}
	else {
		address.sa_socket = FUNC5( (short)port );
	}

	if( FUNC3( newsocket, (void *)&address, sizeof(address) ) == SOCKET_ERROR ) {
		FUNC0( "WARNING: IPX_Socket: bind: %s\n", FUNC1() );
		FUNC4( newsocket );
		return 0;
	}

	return newsocket;
}