#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ sfxinfo; } ;
typedef  TYPE_1__ channel_t ;
struct TYPE_5__ {int lumpnum; int usefulness; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int NUMSFX ; 
 int /*<<< orphan*/  PU_STATIC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_3__* S_sfx ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* channels ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ mus_paused ; 
 int numChannels ; 
 int /*<<< orphan*/  stderr ; 

void FUNC5
( int		sfxVolume,
  int		musicVolume )
{  
  int		i;

  FUNC4( stderr, "S_Init: default sfx volume %d\n", sfxVolume);

  // Whatever these did with DMX, these are rather dummies now.
  FUNC0();
  
  FUNC2(sfxVolume);
  // No music with Linux - another dummy.
  FUNC1(musicVolume);

  // Allocating the internal channels for mixing
  // (the maximum numer of sounds rendered
  // simultaneously) within zone memory.
  channels =
    (channel_t *) FUNC3(numChannels*sizeof(channel_t), PU_STATIC, 0);
  
  // Free all channels for use
  for (i=0 ; i<numChannels ; i++)
    channels[i].sfxinfo = 0;
  
  // no sounds are playing, and they are not mus_paused
  mus_paused = 0;

  // Note that sounds have not been cached (yet).
  for (i=1 ; i<NUMSFX ; i++)
    S_sfx[i].lumpnum = S_sfx[i].usefulness = -1;
}