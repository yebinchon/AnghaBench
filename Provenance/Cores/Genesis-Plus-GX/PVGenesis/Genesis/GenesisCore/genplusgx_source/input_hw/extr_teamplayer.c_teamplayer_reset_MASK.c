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
struct TYPE_2__ {int State; scalar_t__ Counter; } ;

/* Variables and functions */
 TYPE_1__* teamplayer ; 

void FUNC0(int port)
{
  teamplayer[port].State = 0x60; /* TH = 1, TR = 1 */
  teamplayer[port].Counter = 0;
}