#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  Status; } ;
typedef  TYPE_1__ ETH_DMADESCTypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(ETH_DMADESCTypeDef *DMATxDesc, uint32_t DMATxDesc_Checksum)
{
  /* Check the parameters */
  FUNC1(FUNC0(DMATxDesc_Checksum));

  /* Set the selected DMA Tx desc checksum insertion control */
  DMATxDesc->Status |= DMATxDesc_Checksum;
}