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
struct TYPE_2__ {scalar_t__ ticks; int /*<<< orphan*/  sem_sync; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SDL_INIT_EVENTTHREAD ; 
 int SDL_INIT_TIMER ; 
 scalar_t__ FUNC2 (int) ; 
 TYPE_1__ sdl_sync ; 

__attribute__((used)) static int FUNC3()
{
  if(FUNC2(SDL_INIT_TIMER|SDL_INIT_EVENTTHREAD) < 0)
  {
    FUNC0(NULL, "SDL Timer initialization failed", "Error", 0);
    return 0;
  }

  sdl_sync.sem_sync = FUNC1(0);
  sdl_sync.ticks = 0;
  return 1;
}