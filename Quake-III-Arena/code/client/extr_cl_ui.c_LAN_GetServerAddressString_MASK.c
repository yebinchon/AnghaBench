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
struct TYPE_10__ {TYPE_4__* favoriteServers; TYPE_3__* globalServers; TYPE_2__* mplayerServers; TYPE_1__* localServers; } ;
struct TYPE_9__ {int /*<<< orphan*/  adr; } ;
struct TYPE_8__ {int /*<<< orphan*/  adr; } ;
struct TYPE_7__ {int /*<<< orphan*/  adr; } ;
struct TYPE_6__ {int /*<<< orphan*/  adr; } ;

/* Variables and functions */
#define  AS_FAVORITES 131 
#define  AS_GLOBAL 130 
#define  AS_LOCAL 129 
#define  AS_MPLAYER 128 
 int MAX_GLOBAL_SERVERS ; 
 int MAX_OTHER_SERVERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_5__ cls ; 

__attribute__((used)) static void FUNC2( int source, int n, char *buf, int buflen ) {
	switch (source) {
		case AS_LOCAL :
			if (n >= 0 && n < MAX_OTHER_SERVERS) {
				FUNC1(buf, FUNC0( cls.localServers[n].adr) , buflen );
				return;
			}
			break;
		case AS_MPLAYER :
			if (n >= 0 && n < MAX_OTHER_SERVERS) {
				FUNC1(buf, FUNC0( cls.mplayerServers[n].adr) , buflen );
				return;
			}
			break;
		case AS_GLOBAL :
			if (n >= 0 && n < MAX_GLOBAL_SERVERS) {
				FUNC1(buf, FUNC0( cls.globalServers[n].adr) , buflen );
				return;
			}
			break;
		case AS_FAVORITES :
			if (n >= 0 && n < MAX_OTHER_SERVERS) {
				FUNC1(buf, FUNC0( cls.favoriteServers[n].adr) , buflen );
				return;
			}
			break;
	}
	buf[0] = '\0';
}