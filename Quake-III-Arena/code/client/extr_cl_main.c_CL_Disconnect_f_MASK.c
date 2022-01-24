#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ CA_CINEMATIC ; 
 scalar_t__ CA_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  ERR_DISCONNECT ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ cls ; 

void FUNC3( void ) {
	FUNC2();
	FUNC1("ui_singlePlayerActive", "0");
	if ( cls.state != CA_DISCONNECTED && cls.state != CA_CINEMATIC ) {
		FUNC0 (ERR_DISCONNECT, "Disconnected from server");
	}
}