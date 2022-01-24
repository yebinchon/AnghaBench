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
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_5__ {int* ip; void* port; void* type; } ;
typedef  TYPE_1__ netadr_t ;
typedef  int /*<<< orphan*/  base ;

/* Variables and functions */
 void* FUNC0 (short) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int MAX_STRING_CHARS ; 
 void* NA_BAD ; 
 void* NA_LOOPBACK ; 
 short PORT_SERVER ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 char* FUNC6 (char*,char*) ; 

qboolean	FUNC7( const char *s, netadr_t *a ) {
	qboolean	r;
	char	base[MAX_STRING_CHARS];
	char	*port;

	if (!FUNC5 (s, "localhost")) {
		FUNC1 (a, 0, sizeof(*a));
		a->type = NA_LOOPBACK;
		return qtrue;
	}

	// look for a port number
	FUNC2( base, s, sizeof( base ) );
	port = FUNC6( base, ":" );
	if ( port ) {
		*port = 0;
		port++;
	}

	r = FUNC3( base, a );

	if ( !r ) {
		a->type = NA_BAD;
		return qfalse;
	}

	// inet_addr returns this if out of range
	if ( a->ip[0] == 255 && a->ip[1] == 255 && a->ip[2] == 255 && a->ip[3] == 255 ) {
		a->type = NA_BAD;
		return qfalse;
	}

	if ( port ) {
		a->port = FUNC0( (short)FUNC4( port ) );
	} else {
		a->port = FUNC0( PORT_SERVER );
	}

	return qtrue;
}