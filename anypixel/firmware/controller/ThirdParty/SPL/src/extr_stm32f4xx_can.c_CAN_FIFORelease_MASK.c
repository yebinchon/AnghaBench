#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  RF1R; int /*<<< orphan*/  RF0R; } ;
typedef  TYPE_1__ CAN_TypeDef ;

/* Variables and functions */
 scalar_t__ CAN_FIFO0 ; 
 int /*<<< orphan*/  CAN_RF0R_RFOM0 ; 
 int /*<<< orphan*/  CAN_RF1R_RFOM1 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(CAN_TypeDef* CANx, uint8_t FIFONumber)
{
  /* Check the parameters */
  FUNC2(FUNC0(CANx));
  FUNC2(FUNC1(FIFONumber));
  /* Release FIFO0 */
  if (FIFONumber == CAN_FIFO0)
  {
    CANx->RF0R |= CAN_RF0R_RFOM0;
  }
  /* Release FIFO1 */
  else /* FIFONumber == CAN_FIFO1 */
  {
    CANx->RF1R |= CAN_RF1R_RFOM1;
  }
}