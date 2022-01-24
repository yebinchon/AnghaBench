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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  MAX_VOICECHATS ; 
 int FUNC2 () ; 
 int /*<<< orphan*/ * voiceChatLists ; 

void FUNC3( void ) {
	int size;

	size = FUNC2();
	FUNC0( "scripts/female1.voice", &voiceChatLists[0], MAX_VOICECHATS );
	FUNC0( "scripts/female2.voice", &voiceChatLists[1], MAX_VOICECHATS );
	FUNC0( "scripts/female3.voice", &voiceChatLists[2], MAX_VOICECHATS );
	FUNC0( "scripts/male1.voice", &voiceChatLists[3], MAX_VOICECHATS );
	FUNC0( "scripts/male2.voice", &voiceChatLists[4], MAX_VOICECHATS );
	FUNC0( "scripts/male3.voice", &voiceChatLists[5], MAX_VOICECHATS );
	FUNC0( "scripts/male4.voice", &voiceChatLists[6], MAX_VOICECHATS );
	FUNC0( "scripts/male5.voice", &voiceChatLists[7], MAX_VOICECHATS );
	FUNC1("voice chat memory size = %d\n", size - FUNC2());
}