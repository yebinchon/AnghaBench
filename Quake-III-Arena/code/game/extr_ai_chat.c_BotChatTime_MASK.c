#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  character; } ;
typedef  TYPE_1__ bot_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  CHARACTERISTIC_CHAT_CPM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

float FUNC1(bot_state_t *bs) {
	int cpm;

	cpm = FUNC0(bs->character, CHARACTERISTIC_CHAT_CPM, 1, 4000);

	return 2.0;	//(float) trap_BotChatLength(bs->cs) * 30 / cpm;
}