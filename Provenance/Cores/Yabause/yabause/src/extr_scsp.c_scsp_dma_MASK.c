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
struct TYPE_2__ {int dmfl; int /*<<< orphan*/  dmlen; int /*<<< orphan*/  drga; int /*<<< orphan*/  dmea; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ scsp ; 
 int* scsp_ccr ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3 (void)
{
  if (scsp.dmfl & 0x20)
    {
      // dsp -> scsp_ram
      FUNC0 ("scsp dma: scsp_ram(%08lx) <- reg(%08lx) * %08lx\n",
               scsp.dmea, scsp.drga, scsp.dmlen);
    }
  else
    {
      // scsp_ram -> dsp
      FUNC0 ("scsp dma: scsp_ram(%08lx) -> reg(%08lx) * %08lx\n",
               scsp.dmea, scsp.drga, scsp.dmlen);
    }

  scsp_ccr[0x16 ^ 3] &= 0xE0;

  FUNC2 (0x10);
  FUNC1 (0x10);
}