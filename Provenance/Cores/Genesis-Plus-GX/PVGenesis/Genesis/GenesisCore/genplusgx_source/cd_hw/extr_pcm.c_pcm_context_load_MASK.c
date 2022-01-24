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
typedef  int uint8 ;
struct TYPE_2__ {int* chan; int* out; int* bank; int* ram; int enabled; int status; int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 TYPE_1__ pcm ; 

int FUNC1(uint8 *state)
{
  uint8 tmp8;
  int bufferptr = 0;

  FUNC0(pcm.chan, sizeof(pcm.chan));
  FUNC0(pcm.out, sizeof(pcm.out));

  FUNC0(&tmp8, 1);
  pcm.bank = &pcm.ram[(tmp8 & 0x0f) << 12];

  FUNC0(&pcm.enabled, sizeof(pcm.enabled));
  FUNC0(&pcm.status, sizeof(pcm.status));
  FUNC0(&pcm.index, sizeof(pcm.index));
  FUNC0(pcm.ram, sizeof(pcm.ram));

  return bufferptr;
}