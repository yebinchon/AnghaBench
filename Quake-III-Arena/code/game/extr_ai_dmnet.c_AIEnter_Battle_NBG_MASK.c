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
struct TYPE_4__ {int /*<<< orphan*/  ainode; } ;
typedef  TYPE_1__ bot_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  AINode_Battle_NBG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char*,char*) ; 

void FUNC1(bot_state_t *bs, char *s) {
	FUNC0(bs, "battle NBG", "", s);
	bs->ainode = AINode_Battle_NBG;
}