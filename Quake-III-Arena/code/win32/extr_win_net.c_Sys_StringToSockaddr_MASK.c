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
struct sockaddr_ipx {scalar_t__ sa_socket; int /*<<< orphan*/  sa_family; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; scalar_t__ sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct hostent {scalar_t__* h_addr_list; } ;
typedef  int /*<<< orphan*/  qboolean ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_IPX ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int MAX_STRING_CHARS ; 
 struct hostent* FUNC1 (char const*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/ * sa_netnum ; 
 int /*<<< orphan*/ * sa_nodenum ; 
 int FUNC4 (char const*) ; 

qboolean FUNC5( const char *s, struct sockaddr *sadr ) {
	struct hostent	*h;
	int		val;
	char	copy[MAX_STRING_CHARS];
	
	FUNC3( sadr, 0, sizeof( *sadr ) );

	// check for an IPX address
	if( ( FUNC4( s ) == 21 ) && ( s[8] == '.' ) ) {
		((struct sockaddr_ipx *)sadr)->sa_family = AF_IPX;
		((struct sockaddr_ipx *)sadr)->sa_socket = 0;
		copy[2] = 0;
		FUNC0(0, sa_netnum[0]);
		FUNC0(2, sa_netnum[1]);
		FUNC0(4, sa_netnum[2]);
		FUNC0(6, sa_netnum[3]);
		FUNC0(9, sa_nodenum[0]);
		FUNC0(11, sa_nodenum[1]);
		FUNC0(13, sa_nodenum[2]);
		FUNC0(15, sa_nodenum[3]);
		FUNC0(17, sa_nodenum[4]);
		FUNC0(19, sa_nodenum[5]);
	}
	else {
		((struct sockaddr_in *)sadr)->sin_family = AF_INET;
		((struct sockaddr_in *)sadr)->sin_port = 0;

		if( s[0] >= '0' && s[0] <= '9' ) {
			*(int *)&((struct sockaddr_in *)sadr)->sin_addr = FUNC2(s);
		} else {
			if( ( h = FUNC1( s ) ) == 0 ) {
				return 0;
			}
			*(int *)&((struct sockaddr_in *)sadr)->sin_addr = *(int *)h->h_addr_list[0];
		}
	}
	
	return qtrue;
}