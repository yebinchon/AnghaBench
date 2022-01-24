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
typedef  int /*<<< orphan*/  blip_t ;
struct TYPE_2__ {int /*<<< orphan*/  sample_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/ ** blip ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_1__ snd ; 

void FUNC1(blip_t* left, blip_t* right)
{
  /* CD-DA is running by default at 44100 Hz */
  /* Audio stream is resampled to desired rate using Blip Buffer */
  blip[0] = left;
  blip[1] = right;
  FUNC0(left, 44100, snd.sample_rate);
  FUNC0(right, 44100, snd.sample_rate);
}