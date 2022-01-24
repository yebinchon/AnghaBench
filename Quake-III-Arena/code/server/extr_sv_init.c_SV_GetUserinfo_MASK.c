#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int integer; } ;
struct TYPE_5__ {TYPE_1__* clients; } ;
struct TYPE_4__ {int /*<<< orphan*/  userinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* sv_maxclients ; 
 TYPE_2__ svs ; 

void FUNC2( int index, char *buffer, int bufferSize ) {
	if ( bufferSize < 1 ) {
		FUNC0( ERR_DROP, "SV_GetUserinfo: bufferSize == %i", bufferSize );
	}
	if ( index < 0 || index >= sv_maxclients->integer ) {
		FUNC0 (ERR_DROP, "SV_GetUserinfo: bad index %i\n", index);
	}
	FUNC1( buffer, svs.clients[ index ].userinfo, bufferSize );
}