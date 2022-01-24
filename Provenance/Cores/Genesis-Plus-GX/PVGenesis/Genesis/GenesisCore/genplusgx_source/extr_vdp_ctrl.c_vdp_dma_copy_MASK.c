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
typedef  scalar_t__ uint16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int addr ; 
 int code ; 
 scalar_t__ dma_src ; 
 unsigned int* reg ; 
 int /*<<< orphan*/  sat ; 
 unsigned int sat_addr_mask ; 
 unsigned int sat_base_mask ; 
 unsigned int satb ; 
 int /*<<< orphan*/  vram ; 

__attribute__((used)) static void FUNC3(unsigned int length)
{
  /* VRAM read/write operation only */
  if ((code & 0x1E) == 0x10)
  {
    int name;
    uint8 data;
    
    /* VRAM source address */
    uint16 source = dma_src;

    do
    {
      /* Read byte from source address */
      data = FUNC1(vram, source);

      /* Intercept writes to Sprite Attribute Table */
      if ((addr & sat_base_mask) == satb)
      {
        /* Update internal SAT */
        FUNC2(sat, addr & sat_addr_mask, data);
      }

      /* Write byte to VRAM address */
      FUNC2(vram, addr, data);

      /* Update pattern cache */
      FUNC0(addr);

      /* Increment source address */
      source++;

      /* Increment VRAM address */
      addr += reg[15];
    }
    while (--length);

    /* Update DMA source address */
    dma_src = source;
  }
  else
  {
    /* DMA source & VRAM addresses are still incremented */
    addr += reg[15] * length;
    dma_src += length;
  }
}