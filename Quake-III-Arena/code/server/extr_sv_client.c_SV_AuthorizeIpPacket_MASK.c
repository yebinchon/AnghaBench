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
typedef  int /*<<< orphan*/  netadr_t ;
struct TYPE_4__ {int challenge; int /*<<< orphan*/  adr; int /*<<< orphan*/  pingTime; } ;
struct TYPE_3__ {TYPE_2__* challenges; int /*<<< orphan*/  time; int /*<<< orphan*/  authorizeAddress; } ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int MAX_CHALLENGES ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  NS_SERVER ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*) ; 
 TYPE_1__ svs ; 

void FUNC9( netadr_t from ) {
	int		challenge;
	int		i;
	char	*s;
	char	*r;
	char	ret[1024];

	if ( !FUNC4( from, svs.authorizeAddress ) ) {
		FUNC2( "SV_AuthorizeIpPacket: not from authorize server\n" );
		return;
	}

	challenge = FUNC7( FUNC0( 1 ) );

	for (i = 0 ; i < MAX_CHALLENGES ; i++) {
		if ( svs.challenges[i].challenge == challenge ) {
			break;
		}
	}
	if ( i == MAX_CHALLENGES ) {
		FUNC2( "SV_AuthorizeIpPacket: challenge not found\n" );
		return;
	}

	// send a packet back to the original client
	svs.challenges[i].pingTime = svs.time;
	s = FUNC0( 2 );
	r = FUNC0( 3 );			// reason

	if ( !FUNC6( s, "demo" ) ) {
		if ( FUNC3( "fs_restrict" ) ) {
			// a demo client connecting to a demo server
			FUNC5( NS_SERVER, svs.challenges[i].adr, 
				"challengeResponse %i", svs.challenges[i].challenge );
			return;
		}
		// they are a demo client trying to connect to a real server
		FUNC5( NS_SERVER, svs.challenges[i].adr, "print\nServer is not a demo server\n" );
		// clear the challenge record so it won't timeout and let them through
		FUNC1( &svs.challenges[i], 0, sizeof( svs.challenges[i] ) );
		return;
	}
	if ( !FUNC6( s, "accept" ) ) {
		FUNC5( NS_SERVER, svs.challenges[i].adr, 
			"challengeResponse %i", svs.challenges[i].challenge );
		return;
	}
	if ( !FUNC6( s, "unknown" ) ) {
		if (!r) {
			FUNC5( NS_SERVER, svs.challenges[i].adr, "print\nAwaiting CD key authorization\n" );
		} else {
			FUNC8(ret, "print\n%s\n", r);
			FUNC5( NS_SERVER, svs.challenges[i].adr, ret );
		}
		// clear the challenge record so it won't timeout and let them through
		FUNC1( &svs.challenges[i], 0, sizeof( svs.challenges[i] ) );
		return;
	}

	// authorization failed
	if (!r) {
		FUNC5( NS_SERVER, svs.challenges[i].adr, "print\nSomeone is using this CD Key\n" );
	} else {
		FUNC8(ret, "print\n%s\n", r);
		FUNC5( NS_SERVER, svs.challenges[i].adr, ret );
	}

	// clear the challenge record so it won't timeout and let them through
	FUNC1( &svs.challenges[i], 0, sizeof( svs.challenges[i] ) );
}