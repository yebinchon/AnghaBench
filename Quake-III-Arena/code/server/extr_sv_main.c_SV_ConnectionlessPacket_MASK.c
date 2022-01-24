#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  netadr_t ;
struct TYPE_8__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ msg_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 char* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

void FUNC16( netadr_t from, msg_t *msg ) {
	char	*s;
	char	*c;

	FUNC4( msg );
	FUNC5( msg );		// skip the -1 marker

	if (!FUNC9("connect", &msg->data[4], 7)) {
		FUNC3(msg, 12);
	}

	s = FUNC6( msg );
	FUNC1( s );

	c = FUNC0(0);
	FUNC2 ("SV packet %s : %s\n", FUNC7(from), c);

	if (!FUNC8(c, "getstatus")) {
		FUNC12( from  );
  } else if (!FUNC8(c, "getinfo")) {
		FUNC10( from );
	} else if (!FUNC8(c, "getchallenge")) {
		FUNC15( from );
	} else if (!FUNC8(c, "connect")) {
		FUNC14( from );
	} else if (!FUNC8(c, "ipAuthorize")) {
		FUNC13( from );
	} else if (!FUNC8(c, "rcon")) {
		FUNC11( from, msg );
	} else if (!FUNC8(c, "disconnect")) {
		// if a client starts up a local server, we may see some spurious
		// server disconnect messages when their new server sees our final
		// sequenced messages to the old client
	} else {
		FUNC2 ("bad connectionless packet from %s:\n%s\n"
		, FUNC7 (from), s);
	}
}