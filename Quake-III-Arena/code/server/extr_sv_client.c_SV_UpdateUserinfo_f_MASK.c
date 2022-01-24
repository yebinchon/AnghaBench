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
struct TYPE_6__ {int /*<<< orphan*/  userinfo; } ;
typedef  TYPE_1__ client_t ;
struct TYPE_7__ {int clients; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GAME_CLIENT_USERINFO_CHANGED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  gvm ; 
 TYPE_2__ svs ; 

__attribute__((used)) static void FUNC4( client_t *cl ) {
	FUNC1( cl->userinfo, FUNC0(1), sizeof(cl->userinfo) );

	FUNC2( cl );
	// call prog code to allow overrides
	FUNC3( gvm, GAME_CLIENT_USERINFO_CHANGED, cl - svs.clients );
}