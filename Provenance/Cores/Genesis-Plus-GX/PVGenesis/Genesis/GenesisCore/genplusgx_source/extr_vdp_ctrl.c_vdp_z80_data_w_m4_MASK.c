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
typedef  unsigned int uint16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int addr ; 
 int bordrr ; 
 int code ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int) ; 
 int /*<<< orphan*/ * cram ; 
 scalar_t__ pending ; 
 scalar_t__* reg ; 
 unsigned int* vram ; 

__attribute__((used)) static void FUNC2(unsigned int data)
{
  /* Clear pending flag */
  pending = 0;

  /* Check destination code */
  if (code & 0x02)
  {
    /* CRAM index (32 words) */
    int index = addr & 0x1F;

    /* Pointer to CRAM word */
    uint16 *p = (uint16 *)&cram[index << 1];

    /* Check if CRAM data is being modified */
    if (data != *p)
    {
      /* Write CRAM data */
      *p = data;

      /* Update color palette */
      FUNC1(index, data);

      /* Update backdrop color */
      if (index == (0x10 | (bordrr & 0x0F)))
      {
        FUNC1(0x40, data);
      }
    }
  }
  else
  {
    /* VRAM address */
    int index = addr & 0x3FFF;

    /* Only write unique data to VRAM */
    if (data != vram[index])
    {
      int name;

      /* Write data */
      vram[index] = data;

      /* Update pattern cache */
      FUNC0(index);
    }
  }

  /* Increment address register (TODO: check how address is incremented in Mode 4) */
  addr += (reg[15] + 1);
}