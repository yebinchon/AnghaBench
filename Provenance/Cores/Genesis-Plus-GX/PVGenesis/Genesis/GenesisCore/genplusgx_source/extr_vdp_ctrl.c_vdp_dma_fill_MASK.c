#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int addr ; 
 int code ; 
 int /*<<< orphan*/  dmafill ; 
 int* reg ; 
 int /*<<< orphan*/  sat ; 
 int sat_addr_mask ; 
 int sat_base_mask ; 
 int satb ; 
 int /*<<< orphan*/  vram ; 

__attribute__((used)) static void FUNC2(unsigned int length)
{
  /* VRAM write operation only (Williams Greatest Hits after soft reset) */
  if ((code & 0x1F) == 0x01)
  {
    int name;
    uint8 data = dmafill;

    do
    {
      /* Intercept writes to Sprite Attribute Table */
      if ((addr & sat_base_mask) == satb)
      {
        /* Update internal SAT */
        FUNC1(sat, (addr & sat_addr_mask) ^ 1, data);
      }

      /* Write byte to adjacent VRAM address */
      FUNC1(vram, addr ^ 1, data);

      /* Update pattern cache */
      FUNC0 (addr);

      /* Increment VRAM address */
      addr += reg[15];
    }
    while (--length);
  }
  else
  {
    /* VRAM address is still incremented */
    addr += reg[15] * length;
  }
}