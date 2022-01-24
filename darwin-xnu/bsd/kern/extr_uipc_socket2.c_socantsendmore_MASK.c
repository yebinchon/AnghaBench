#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct socket {int /*<<< orphan*/  so_state; } ;

/* Variables and functions */
 int SO_FILT_HINT_CANTSENDMORE ; 
 int SO_FILT_HINT_LOCKED ; 
 int /*<<< orphan*/  SS_CANTSENDMORE ; 
 int /*<<< orphan*/  FUNC0 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sock_evt_cantsendmore ; 
 int /*<<< orphan*/  FUNC1 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*) ; 

void
FUNC3(struct socket *so)
{
	so->so_state |= SS_CANTSENDMORE;
	FUNC1(so, SO_FILT_HINT_LOCKED | SO_FILT_HINT_CANTSENDMORE);
	FUNC0(so, sock_evt_cantsendmore, NULL);
	FUNC2(so);
}