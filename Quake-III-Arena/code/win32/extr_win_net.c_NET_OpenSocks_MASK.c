#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int s_addr; } ;
struct sockaddr_in {short sin_port; int /*<<< orphan*/  sin_zero; TYPE_1__ sin_addr; scalar_t__ sin_family; } ;
struct sockaddr {int dummy; } ;
struct hostent {scalar_t__ h_addrtype; scalar_t__* h_addr_list; } ;
typedef  void* qboolean ;
typedef  int /*<<< orphan*/  address ;
struct TYPE_10__ {scalar_t__* string; } ;
struct TYPE_9__ {scalar_t__ integer; } ;
struct TYPE_8__ {int /*<<< orphan*/  string; } ;
struct TYPE_7__ {scalar_t__* string; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int INADDR_ANY ; 
 int /*<<< orphan*/  INVALID_SOCKET ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 unsigned char FUNC1 () ; 
 int SOCKET_ERROR ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 struct hostent* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (short) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_5__* net_socksPassword ; 
 TYPE_4__* net_socksPort ; 
 TYPE_3__* net_socksServer ; 
 TYPE_2__* net_socksUsername ; 
 void* qfalse ; 
 void* qtrue ; 
 int FUNC8 (int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  socksRelayAddr ; 
 int /*<<< orphan*/  socks_socket ; 
 int FUNC11 (scalar_t__*) ; 
 void* usingSocks ; 

void FUNC12( int port ) {
	struct sockaddr_in	address;
	int					err;
	struct hostent		*h;
	int					len;
	qboolean			rfc1929;
	unsigned char		buf[64];

	usingSocks = qfalse;

	FUNC0( "Opening connection to SOCKS server.\n" );

	if ( ( socks_socket = FUNC10( AF_INET, SOCK_STREAM, IPPROTO_TCP ) ) == INVALID_SOCKET ) {
		err = FUNC2();
		FUNC0( "WARNING: NET_OpenSocks: socket: %s\n", FUNC1() );
		return;
	}

	h = FUNC4( net_socksServer->string );
	if ( h == NULL ) {
		err = FUNC2();
		FUNC0( "WARNING: NET_OpenSocks: gethostbyname: %s\n", FUNC1() );
		return;
	}
	if ( h->h_addrtype != AF_INET ) {
		FUNC0( "WARNING: NET_OpenSocks: gethostbyname: address type was not AF_INET\n" );
		return;
	}
	address.sin_family = AF_INET;
	address.sin_addr.s_addr = *(int *)h->h_addr_list[0];
	address.sin_port = FUNC5( (short)net_socksPort->integer );

	if ( FUNC3( socks_socket, (struct sockaddr *)&address, sizeof( address ) ) == SOCKET_ERROR ) {
		err = FUNC2();
		FUNC0( "NET_OpenSocks: connect: %s\n", FUNC1() );
		return;
	}

	// send socks authentication handshake
	if ( *net_socksUsername->string || *net_socksPassword->string ) {
		rfc1929 = qtrue;
	}
	else {
		rfc1929 = qfalse;
	}

	buf[0] = 5;		// SOCKS version
	// method count
	if ( rfc1929 ) {
		buf[1] = 2;
		len = 4;
	}
	else {
		buf[1] = 1;
		len = 3;
	}
	buf[2] = 0;		// method #1 - method id #00: no authentication
	if ( rfc1929 ) {
		buf[2] = 2;		// method #2 - method id #02: username/password
	}
	if ( FUNC9( socks_socket, buf, len, 0 ) == SOCKET_ERROR ) {
		err = FUNC2();
		FUNC0( "NET_OpenSocks: send: %s\n", FUNC1() );
		return;
	}

	// get the response
	len = FUNC8( socks_socket, buf, 64, 0 );
	if ( len == SOCKET_ERROR ) {
		err = FUNC2();
		FUNC0( "NET_OpenSocks: recv: %s\n", FUNC1() );
		return;
	}
	if ( len != 2 || buf[0] != 5 ) {
		FUNC0( "NET_OpenSocks: bad response\n" );
		return;
	}
	switch( buf[1] ) {
	case 0:	// no authentication
		break;
	case 2: // username/password authentication
		break;
	default:
		FUNC0( "NET_OpenSocks: request denied\n" );
		return;
	}

	// do username/password authentication if needed
	if ( buf[1] == 2 ) {
		int		ulen;
		int		plen;

		// build the request
		ulen = FUNC11( net_socksUsername->string );
		plen = FUNC11( net_socksPassword->string );

		buf[0] = 1;		// username/password authentication version
		buf[1] = ulen;
		if ( ulen ) {
			FUNC6( &buf[2], net_socksUsername->string, ulen );
		}
		buf[2 + ulen] = plen;
		if ( plen ) {
			FUNC6( &buf[3 + ulen], net_socksPassword->string, plen );
		}

		// send it
		if ( FUNC9( socks_socket, buf, 3 + ulen + plen, 0 ) == SOCKET_ERROR ) {
			err = FUNC2();
			FUNC0( "NET_OpenSocks: send: %s\n", FUNC1() );
			return;
		}

		// get the response
		len = FUNC8( socks_socket, buf, 64, 0 );
		if ( len == SOCKET_ERROR ) {
			err = FUNC2();
			FUNC0( "NET_OpenSocks: recv: %s\n", FUNC1() );
			return;
		}
		if ( len != 2 || buf[0] != 1 ) {
			FUNC0( "NET_OpenSocks: bad response\n" );
			return;
		}
		if ( buf[1] != 0 ) {
			FUNC0( "NET_OpenSocks: authentication failed\n" );
			return;
		}
	}

	// send the UDP associate request
	buf[0] = 5;		// SOCKS version
	buf[1] = 3;		// command: UDP associate
	buf[2] = 0;		// reserved
	buf[3] = 1;		// address type: IPV4
	*(int *)&buf[4] = INADDR_ANY;
	*(short *)&buf[8] = FUNC5( (short)port );		// port
	if ( FUNC9( socks_socket, buf, 10, 0 ) == SOCKET_ERROR ) {
		err = FUNC2();
		FUNC0( "NET_OpenSocks: send: %s\n", FUNC1() );
		return;
	}

	// get the response
	len = FUNC8( socks_socket, buf, 64, 0 );
	if( len == SOCKET_ERROR ) {
		err = FUNC2();
		FUNC0( "NET_OpenSocks: recv: %s\n", FUNC1() );
		return;
	}
	if( len < 2 || buf[0] != 5 ) {
		FUNC0( "NET_OpenSocks: bad response\n" );
		return;
	}
	// check completion code
	if( buf[1] != 0 ) {
		FUNC0( "NET_OpenSocks: request denied: %i\n", buf[1] );
		return;
	}
	if( buf[3] != 1 ) {
		FUNC0( "NET_OpenSocks: relay address is not IPV4: %i\n", buf[3] );
		return;
	}
	((struct sockaddr_in *)&socksRelayAddr)->sin_family = AF_INET;
	((struct sockaddr_in *)&socksRelayAddr)->sin_addr.s_addr = *(int *)&buf[4];
	((struct sockaddr_in *)&socksRelayAddr)->sin_port = *(short *)&buf[8];
	FUNC7( ((struct sockaddr_in *)&socksRelayAddr)->sin_zero, 0, 8 );

	usingSocks = qtrue;
}