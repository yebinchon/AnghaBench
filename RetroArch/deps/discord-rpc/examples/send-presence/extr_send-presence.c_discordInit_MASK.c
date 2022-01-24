#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  handlers ;
struct TYPE_4__ {int /*<<< orphan*/  joinRequest; int /*<<< orphan*/  spectateGame; int /*<<< orphan*/  joinGame; int /*<<< orphan*/  errored; int /*<<< orphan*/  disconnected; int /*<<< orphan*/  ready; } ;
typedef  TYPE_1__ DiscordEventHandlers ;

/* Variables and functions */
 int /*<<< orphan*/  APPLICATION_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  handleDiscordDisconnected ; 
 int /*<<< orphan*/  handleDiscordError ; 
 int /*<<< orphan*/  handleDiscordJoin ; 
 int /*<<< orphan*/  handleDiscordJoinRequest ; 
 int /*<<< orphan*/  handleDiscordReady ; 
 int /*<<< orphan*/  handleDiscordSpectate ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2()
{
    DiscordEventHandlers handlers;
    FUNC1(&handlers, 0, sizeof(handlers));
    handlers.ready = handleDiscordReady;
    handlers.disconnected = handleDiscordDisconnected;
    handlers.errored = handleDiscordError;
    handlers.joinGame = handleDiscordJoin;
    handlers.spectateGame = handleDiscordSpectate;
    handlers.joinRequest = handleDiscordJoinRequest;
    FUNC0(APPLICATION_ID, &handlers, 1, NULL);
}