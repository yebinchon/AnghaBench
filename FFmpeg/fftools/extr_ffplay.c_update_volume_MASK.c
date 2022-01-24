#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int audio_volume; } ;
typedef  TYPE_1__ VideoState ;

/* Variables and functions */
 int SDL_MIX_MAXVOLUME ; 
 double FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (double,double) ; 

__attribute__((used)) static void FUNC4(VideoState *is, int sign, double step)
{
    double volume_level = is->audio_volume ? (20 * FUNC1(is->audio_volume / (double)SDL_MIX_MAXVOLUME) / FUNC1(10)) : -1000.0;
    int new_volume = FUNC2(SDL_MIX_MAXVOLUME * FUNC3(10.0, (volume_level + sign * step) / 20.0));
    is->audio_volume = FUNC0(is->audio_volume == new_volume ? (is->audio_volume + sign) : new_volume, 0, SDL_MIX_MAXVOLUME);
}