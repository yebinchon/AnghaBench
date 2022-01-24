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
typedef  int /*<<< orphan*/  info ;
struct TYPE_4__ {scalar_t__ connectTime; int challenge; int /*<<< orphan*/  serverAddress; int /*<<< orphan*/  connectPacketCount; scalar_t__ demoplaying; } ;
struct TYPE_3__ {int state; scalar_t__ realtime; } ;

/* Variables and functions */
#define  CA_CHALLENGING 129 
#define  CA_CONNECTING 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CVAR_USERINFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 int MAX_INFO_STRING ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NS_CLIENT ; 
 int PROTOCOL_VERSION ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ RETRANSMIT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_2__ clc ; 
 TYPE_1__ cls ; 
 int /*<<< orphan*/  cvar_modifiedFlags ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 

void FUNC12( void ) {
	int		port, i;
	char	info[MAX_INFO_STRING];
	char	data[MAX_INFO_STRING];

	// don't send anything if playing back a demo
	if ( clc.demoplaying ) {
		return;
	}

	// resend if we haven't gotten a reply yet
	if ( cls.state != CA_CONNECTING && cls.state != CA_CHALLENGING ) {
		return;
	}

	if ( cls.realtime - clc.connectTime < RETRANSMIT_TIMEOUT ) {
		return;
	}

	clc.connectTime = cls.realtime;	// for retransmit requests
	clc.connectPacketCount++;


	switch ( cls.state ) {
	case CA_CONNECTING:
		// requesting a challenge
		if ( !FUNC8( clc.serverAddress ) ) {
			FUNC0();
		}
		FUNC6(NS_CLIENT, clc.serverAddress, "getchallenge");
		break;
		
	case CA_CHALLENGING:
		// sending back the challenge
		port = FUNC3 ("net_qport");

		FUNC7( info, FUNC2( CVAR_USERINFO ), sizeof( info ) );
		FUNC4( info, "protocol", FUNC11("%i", PROTOCOL_VERSION ) );
		FUNC4( info, "qport", FUNC11("%i", port ) );
		FUNC4( info, "challenge", FUNC11("%i", clc.challenge ) );
		
		FUNC9(data, "connect ");
    // TTimo adding " " around the userinfo string to avoid truncated userinfo on the server
    //   (Com_TokenizeString tokenizes around spaces)
    data[8] = '"';

		for(i=0;i<FUNC10(info);i++) {
			data[9+i] = info[i];	// + (clc.challenge)&0x3;
		}
    data[9+i] = '"';
		data[10+i] = 0;

    // NOTE TTimo don't forget to set the right data length!
		FUNC5( NS_CLIENT, clc.serverAddress, &data[0], i+10 );
		// the most current userinfo has been sent, so watch for any
		// newer changes to userinfo variables
		cvar_modifiedFlags &= ~CVAR_USERINFO;
		break;

	default:
		FUNC1( ERR_FATAL, "CL_CheckForResend: bad cls.state" );
	}
}