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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int midflag; int midincnt; int /*<<< orphan*/ * midinbuf; } ;

/* Variables and functions */
 int SCSP_MIDI_IN_EMP ; 
 int SCSP_MIDI_IN_FUL ; 
 int SCSP_MIDI_IN_OVF ; 
 TYPE_1__ scsp ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void
FUNC2 (u8 data)
{
  if (scsp.midflag & SCSP_MIDI_IN_EMP)
    {
      FUNC1(0x8);
      FUNC0(0x8);
    }

  scsp.midflag &= ~SCSP_MIDI_IN_EMP;

  if (scsp.midincnt > 3)
    {
      scsp.midflag |= SCSP_MIDI_IN_OVF;
      return;
    }

  scsp.midinbuf[scsp.midincnt++] = data;

  if (scsp.midincnt > 3) scsp.midflag |= SCSP_MIDI_IN_FUL;
}