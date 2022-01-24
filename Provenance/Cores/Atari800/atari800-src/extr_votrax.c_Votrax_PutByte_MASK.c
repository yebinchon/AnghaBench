#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int UBYTE ;
struct TYPE_4__ {int actPhoneme; int busy; int actIntonation; TYPE_1__* intf; int /*<<< orphan*/  iDelay; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* BusyCallback ) (int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * PhonemeNames ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_2__ votraxsc01_locals ; 

void FUNC4(UBYTE data)
{
	int Phoneme, Intonation;

	Phoneme = data & 0x3F;
	Intonation = (data >> 6)&0x03;

#ifdef VERBOSE
	if (!votraxsc01_locals.intf) {
		LOG(("Error: votraxsc01_locals.intf not set"));
		return;
	}
#endif /* VERBOSE */
	FUNC0(("Votrax SC-01: %s at intonation %d\n", PhonemeNames[Phoneme], Intonation));
	FUNC1(Phoneme, Intonation);

	if ( votraxsc01_locals.actPhoneme==0x3f )
		votraxsc01_locals.iDelay = FUNC3(20);
		
	if ( !votraxsc01_locals.busy ) 
	{
		votraxsc01_locals.busy = 1;
		if ( votraxsc01_locals.intf->BusyCallback )
			(*votraxsc01_locals.intf->BusyCallback)(votraxsc01_locals.busy);
	}

	votraxsc01_locals.actPhoneme = Phoneme;
	votraxsc01_locals.actIntonation = Intonation;
}