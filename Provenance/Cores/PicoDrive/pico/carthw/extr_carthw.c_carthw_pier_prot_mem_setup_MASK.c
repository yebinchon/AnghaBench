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
struct TYPE_2__ {scalar_t__ rom; scalar_t__ romsize; } ;

/* Variables and functions */
 int M68K_BANK_SIZE ; 
 TYPE_1__ Pico ; 
 scalar_t__ carthw_pier_prot_read8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,scalar_t__,int) ; 
 int /*<<< orphan*/  m68k_read16_map ; 
 int /*<<< orphan*/  m68k_read8_map ; 

__attribute__((used)) static void FUNC1(int prot_enable)
{
  if (prot_enable) {
    /* the dump protection.. */
    int a;
    for (a = 0x000000; a < 0x400000; a += M68K_BANK_SIZE) {
      FUNC0(m68k_read8_map,  a, a + 0xffff, Pico.rom + Pico.romsize, 0);
      FUNC0(m68k_read16_map, a, a + 0xffff, Pico.rom + Pico.romsize, 0);
    }
    FUNC0(m68k_read8_map, M68K_BANK_SIZE, M68K_BANK_SIZE * 2 - 1,
      carthw_pier_prot_read8, 1);
  }
  else {
    FUNC0(m68k_read8_map,  0, 0x27ffff, Pico.rom, 0);
    FUNC0(m68k_read16_map, 0, 0x27ffff, Pico.rom, 0);
  }
}