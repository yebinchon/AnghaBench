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
 int POKEYSND_BIT16 ; 
 scalar_t__ POKEYSND_process_buffer ; 
 int POKEYSND_process_buffer_fill ; 
 int POKEYSND_snd_flags ; 
 int /*<<< orphan*/  FUNC0 (unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 

int FUNC3(void)
{
	int sndn;
	FUNC1();
	sndn = POKEYSND_process_buffer_fill / ((POKEYSND_snd_flags & POKEYSND_BIT16) ? 2 : 1);
	POKEYSND_process_buffer_fill = 0;

#if defined(PBI_XLD) || defined (VOICEBOX)
	VOTRAXSND_Process(POKEYSND_process_buffer, sndn);
#endif
#if !defined(__PLUS) && !defined(ASAP)
	FUNC0((const unsigned char *)POKEYSND_process_buffer, sndn);
#endif
	return sndn;
}