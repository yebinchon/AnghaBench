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
struct TYPE_2__ {scalar_t__ surf_screen; scalar_t__ surf_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__ sdl_video ; 

__attribute__((used)) static void FUNC1()
{
  if (sdl_video.surf_bitmap)
    FUNC0(sdl_video.surf_bitmap);
  if (sdl_video.surf_screen)
    FUNC0(sdl_video.surf_screen);
}