#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Uint32 ;
struct TYPE_6__ {char* international; } ;
struct TYPE_5__ {int ticks; int /*<<< orphan*/  sem_sync; } ;
struct TYPE_4__ {int frames_rendered; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 TYPE_3__ rominfo ; 
 TYPE_2__ sdl_sync ; 
 TYPE_1__ sdl_video ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,char*) ; 
 scalar_t__ vdp_pal ; 

__attribute__((used)) static Uint32 FUNC3(Uint32 interval)
{
  FUNC0(sdl_sync.sem_sync);
  char caption[100];  
  sdl_sync.ticks++;
  if (sdl_sync.ticks == (vdp_pal ? 50 : 20))
  {
    int fps = vdp_pal ? (sdl_video.frames_rendered / 3) : sdl_video.frames_rendered;
    sdl_sync.ticks = sdl_video.frames_rendered = 0;
    FUNC2(caption,"%d fps - %s ", fps, rominfo.international);
    FUNC1(caption, NULL);
  }
  return interval;
}