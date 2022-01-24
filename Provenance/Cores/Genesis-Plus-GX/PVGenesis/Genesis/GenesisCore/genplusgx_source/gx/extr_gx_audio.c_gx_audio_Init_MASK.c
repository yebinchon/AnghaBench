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
struct stat {int /*<<< orphan*/  st_size; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ Bg_music_ogg ; 
 int /*<<< orphan*/  Bg_music_ogg_size ; 
 char* DEFAULT_PATH ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct stat*) ; 

void FUNC7(void)
{
  /* Initialize AUDIO processing library (ASNDLIB) */
  /* AUDIO & DSP hardware are initialized */
  /* Default samplerate is set to 48kHz */
  FUNC0();

  /* Load background music from FAT device */
  char fname[MAXPATHLEN];
  FUNC5(fname,"%s/Bg_music.ogg",DEFAULT_PATH);
  FILE *f = FUNC2(fname,"rb");
  if (f)
  {
    struct stat filestat;
    FUNC6(fname, &filestat);
    Bg_music_ogg_size = filestat.st_size;
    Bg_music_ogg = FUNC4(32,Bg_music_ogg_size);
    if (Bg_music_ogg)
    {
      FUNC3(Bg_music_ogg,1,Bg_music_ogg_size,f);
    }
    FUNC1(f);
  }
}