#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  adrstr; } ;
typedef  TYPE_3__ servernode_t ;
struct TYPE_6__ {size_t curvalue; } ;
struct TYPE_8__ {TYPE_2__ list; TYPE_1__* table; } ;
struct TYPE_5__ {TYPE_3__* servernode; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXEC_APPEND ; 
 TYPE_4__ g_arenaservers ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2( void ) {
	servernode_t*	servernode;

	servernode = g_arenaservers.table[g_arenaservers.list.curvalue].servernode;
	if( servernode ) {
		FUNC0( EXEC_APPEND, FUNC1( "connect %s\n", servernode->adrstr ) );
	}
}