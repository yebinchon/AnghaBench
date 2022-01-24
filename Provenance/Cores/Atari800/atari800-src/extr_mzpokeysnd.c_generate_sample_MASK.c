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
typedef  int /*<<< orphan*/  PokeyState ;

/* Variables and functions */
 int POKEYSND_playback_freq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int pokey_frq ; 
 double FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static double FUNC2(PokeyState* ps)
{
    /*unsigned long ta = (subticks+pokey_frq)/POKEYSND_playback_freq;
    subticks = (subticks+pokey_frq)%POKEYSND_playback_freq;*/

    FUNC0(ps, pokey_frq/POKEYSND_playback_freq);
    return FUNC1(ps);
}