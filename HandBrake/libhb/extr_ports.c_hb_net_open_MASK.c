#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in {int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct hostent {int /*<<< orphan*/  h_addrtype; int /*<<< orphan*/  h_length; int /*<<< orphan*/  h_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  socket; } ;
typedef  TYPE_1__ hb_net_t ;
typedef  int /*<<< orphan*/  WSADATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 struct hostent* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

hb_net_t * FUNC11( char * address, int port )
{
    hb_net_t * n = FUNC2( sizeof( hb_net_t ), 1 );

    struct sockaddr_in   sock;
    struct hostent     * host;

#ifdef SYS_MINGW
    WSADATA wsaData;
    int iResult, winsock_init = 0;

    // Initialize Winsock
    if (!winsock_init)
    {
        iResult = WSAStartup(MAKEWORD(2, 2), &wsaData);
        if (iResult != 0)
        {
            hb_log("WSAStartup failed: %d", iResult);
            free(n);
            return NULL;
        }
        winsock_init = 1;
    }
#endif

    /* TODO: find out why this doesn't work on Win32 */
    if( !( host = FUNC5( address ) ) )
    {
        FUNC6( "gethostbyname failed (%s)", address );
        FUNC4( n );
        return NULL;
    }

    FUNC9( &sock, 0, sizeof( struct sockaddr_in ) );
    sock.sin_family = host->h_addrtype;
    sock.sin_port   = FUNC7( port );
    FUNC8( &sock.sin_addr, host->h_addr, host->h_length );

    if( ( n->socket = FUNC10( host->h_addrtype, SOCK_STREAM, 0 ) ) < 0 )
    {
        FUNC6( "socket failed" );
        FUNC4( n );
        return NULL;
    }

    if( FUNC3( n->socket, (struct sockaddr *) &sock,
                 sizeof( struct sockaddr_in ) ) < 0 )
    {
        FUNC6( "connect failed" );
        FUNC4( n );
        return NULL;
    }

    return n;
}