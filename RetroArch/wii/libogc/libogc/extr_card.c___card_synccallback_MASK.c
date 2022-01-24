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
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t s32 ;
struct TYPE_3__ {int /*<<< orphan*/  wait_sync_queue; } ;
typedef  TYPE_1__ card_block ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* cardmap ; 

__attribute__((used)) static void FUNC3(s32 chn,s32 result)
{
	u32 level;
	card_block *card = &cardmap[chn];
	FUNC1(level);
	FUNC0(card->wait_sync_queue);
	FUNC2(level);
}