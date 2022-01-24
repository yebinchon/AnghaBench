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
 int /*<<< orphan*/  EL_STATUS ; 
 int M68K_BANK_SIZE ; 
 TYPE_1__ Pico ; 
 int /*<<< orphan*/  PicoCartMemSetup ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  PicoLoadStateHook ; 
 int /*<<< orphan*/  PicoResetHook ; 
 int /*<<< orphan*/  carthw_chunks ; 
 int /*<<< orphan*/  carthw_pier_mem_setup ; 
 int /*<<< orphan*/  carthw_pier_reset ; 
 int /*<<< orphan*/  carthw_pier_state ; 
 int /*<<< orphan*/  carthw_pier_statef ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int) ; 

void FUNC3(void)
{
  int i;

  FUNC1(EL_STATUS, "Pier Solar mapper startup");

  // mostly same as for realtec..
  i = FUNC0(Pico.romsize + M68K_BANK_SIZE);
  if (i != 0) {
    FUNC1(EL_STATUS, "OOM");
    return;
  }

  // create dump protection bank
  for (i = 0; i < M68K_BANK_SIZE; i += 0x8000)
    FUNC2(Pico.rom + Pico.romsize + i, Pico.rom, 0x8000);

  PicoCartMemSetup  = carthw_pier_mem_setup;
  PicoResetHook     = carthw_pier_reset;
  PicoLoadStateHook = carthw_pier_statef;
  carthw_chunks     = carthw_pier_state;
}