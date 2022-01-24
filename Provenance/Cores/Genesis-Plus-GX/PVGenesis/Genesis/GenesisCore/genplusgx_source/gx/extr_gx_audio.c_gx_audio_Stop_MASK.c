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
struct TYPE_2__ {scalar_t__ bgm_volume; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ Bg_music_ogg ; 
 int /*<<< orphan*/  Bg_music_ogg_size ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  OGG_INFINITE_TIME ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  Shutdown ; 
 TYPE_1__ config ; 

void FUNC6(void)
{
  /* restart menu audio processing */
  FUNC2();
  FUNC0();
  FUNC1(0);
	
  /* play background music */
  if (Bg_music_ogg && !Shutdown)
  {
    FUNC3(0);	
    FUNC4((char *)Bg_music_ogg, Bg_music_ogg_size, 0, OGG_INFINITE_TIME);	
    FUNC5(((int)config.bgm_volume * 255) / 100);	
  }
}