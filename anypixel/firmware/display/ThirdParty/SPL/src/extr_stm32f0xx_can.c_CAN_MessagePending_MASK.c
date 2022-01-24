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
typedef  int uint32_t ;
struct TYPE_4__ {int RF0R; int RF1R; } ;
typedef  TYPE_1__ CAN_TypeDef ;

/* Variables and functions */
 scalar_t__ CAN_FIFO0 ; 
 scalar_t__ CAN_FIFO1 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

uint8_t FUNC3(CAN_TypeDef* CANx, uint8_t FIFONumber)
{
  uint8_t message_pending=0;
  /* Check the parameters */
  FUNC2(FUNC0(CANx));
  FUNC2(FUNC1(FIFONumber));
  if (FIFONumber == CAN_FIFO0)
  {
    message_pending = (uint8_t)(CANx->RF0R&(uint32_t)0x03);
  }
  else if (FIFONumber == CAN_FIFO1)
  {
    message_pending = (uint8_t)(CANx->RF1R&(uint32_t)0x03);
  }
  else
  {
    message_pending = 0;
  }
  return message_pending;
}