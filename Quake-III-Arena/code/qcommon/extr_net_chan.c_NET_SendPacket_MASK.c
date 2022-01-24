#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  netsrc_t ;
struct TYPE_6__ {scalar_t__ type; } ;
typedef  TYPE_1__ netadr_t ;
struct TYPE_7__ {scalar_t__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ NA_BAD ; 
 scalar_t__ NA_BOT ; 
 scalar_t__ NA_LOOPBACK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,void const*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (int,void const*,TYPE_1__) ; 
 TYPE_2__* showpackets ; 

void FUNC3( netsrc_t sock, int length, const void *data, netadr_t to ) {

	// sequenced packets are shown in netchan, so just show oob
	if ( showpackets->integer && *(int *)data == -1 )	{
		FUNC0 ("send packet %4i\n", length);
	}

	if ( to.type == NA_LOOPBACK ) {
		FUNC1 (sock, length, data, to);
		return;
	}
	if ( to.type == NA_BOT ) {
		return;
	}
	if ( to.type == NA_BAD ) {
		return;
	}

	FUNC2( length, data, to );
}