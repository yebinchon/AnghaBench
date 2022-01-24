#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int widthInChars; } ;
struct TYPE_4__ {int /*<<< orphan*/  keyCatchers; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_LAST_ATTACKER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  KEYCATCH_MESSAGE ; 
 int MAX_CLIENTS ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cgvm ; 
 TYPE_2__ chatField ; 
 int chat_playerNum ; 
 int /*<<< orphan*/  chat_team ; 
 TYPE_1__ cls ; 
 int /*<<< orphan*/  qfalse ; 

void FUNC2 (void) {
	chat_playerNum = FUNC1( cgvm, CG_LAST_ATTACKER );
	if ( chat_playerNum < 0 || chat_playerNum >= MAX_CLIENTS ) {
		chat_playerNum = -1;
		return;
	}
	chat_team = qfalse;
	FUNC0( &chatField );
	chatField.widthInChars = 30;
	cls.keyCatchers ^= KEYCATCH_MESSAGE;
}