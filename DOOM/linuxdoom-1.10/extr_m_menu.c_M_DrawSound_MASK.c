#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ y; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 int LINEHEIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PU_CACHE ; 
 TYPE_1__ SoundDef ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int music_vol ; 
 int sfx_vol ; 
 int /*<<< orphan*/  snd_MusicVolume ; 
 int /*<<< orphan*/  snd_SfxVolume ; 

void FUNC3(void)
{
    FUNC1 (60,38,0,FUNC2("M_SVOL",PU_CACHE));

    FUNC0(SoundDef.x,SoundDef.y+LINEHEIGHT*(sfx_vol+1),
		 16,snd_SfxVolume);

    FUNC0(SoundDef.x,SoundDef.y+LINEHEIGHT*(music_vol+1),
		 16,snd_MusicVolume);
}