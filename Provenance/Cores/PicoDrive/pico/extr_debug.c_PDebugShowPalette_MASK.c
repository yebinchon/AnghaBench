#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int dirtyPal; } ;
struct TYPE_4__ {TYPE_1__ m; } ;

/* Variables and functions */
 unsigned short* HighPal ; 
 int PAHW_SMS ; 
 TYPE_2__ Pico ; 
 int PicoAHW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(unsigned short *screen, int stride)
{
  int x, y;

  Pico.m.dirtyPal = 1;
  if (PicoAHW & PAHW_SMS)
    FUNC1();
  else
    FUNC0(1);
  Pico.m.dirtyPal = 1;

  screen += 16*stride+8;
  for (y = 0; y < 8*4; y++)
    for (x = 0; x < 8*16; x++)
      screen[x + y*stride] = HighPal[x/8 + (y/8)*16];

  screen += 160;
  for (y = 0; y < 8*4; y++)
    for (x = 0; x < 8*16; x++)
      screen[x + y*stride] = HighPal[(x/8 + (y/8)*16) | 0x40];

  screen += stride*48;
  for (y = 0; y < 8*4; y++)
    for (x = 0; x < 8*16; x++)
      screen[x + y*stride] = HighPal[(x/8 + (y/8)*16) | 0x80];
}