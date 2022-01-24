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
typedef  int uint32_t ;
struct TYPE_4__ {int ESR; int MSR; int TSR; int RF0R; int RF1R; } ;
typedef  scalar_t__ FlagStatus ;
typedef  TYPE_1__ CAN_TypeDef ;

/* Variables and functions */
 int CAN_FLAGS_ESR ; 
 int CAN_FLAGS_MSR ; 
 int CAN_FLAGS_RF0R ; 
 int CAN_FLAGS_TSR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ RESET ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

FlagStatus FUNC3(CAN_TypeDef* CANx, uint32_t CAN_FLAG)
{
  FlagStatus bitstatus = RESET;
  
  /* Check the parameters */
  FUNC2(FUNC0(CANx));
  FUNC2(FUNC1(CAN_FLAG));
  

  if((CAN_FLAG & CAN_FLAGS_ESR) != (uint32_t)RESET)
  { 
    /* Check the status of the specified CAN flag */
    if ((CANx->ESR & (CAN_FLAG & 0x000FFFFF)) != (uint32_t)RESET)
    { 
      /* CAN_FLAG is set */
      bitstatus = SET;
    }
    else
    { 
      /* CAN_FLAG is reset */
      bitstatus = RESET;
    }
  }
  else if((CAN_FLAG & CAN_FLAGS_MSR) != (uint32_t)RESET)
  { 
    /* Check the status of the specified CAN flag */
    if ((CANx->MSR & (CAN_FLAG & 0x000FFFFF)) != (uint32_t)RESET)
    { 
      /* CAN_FLAG is set */
      bitstatus = SET;
    }
    else
    { 
      /* CAN_FLAG is reset */
      bitstatus = RESET;
    }
  }
  else if((CAN_FLAG & CAN_FLAGS_TSR) != (uint32_t)RESET)
  { 
    /* Check the status of the specified CAN flag */
    if ((CANx->TSR & (CAN_FLAG & 0x000FFFFF)) != (uint32_t)RESET)
    { 
      /* CAN_FLAG is set */
      bitstatus = SET;
    }
    else
    { 
      /* CAN_FLAG is reset */
      bitstatus = RESET;
    }
  }
  else if((CAN_FLAG & CAN_FLAGS_RF0R) != (uint32_t)RESET)
  { 
    /* Check the status of the specified CAN flag */
    if ((CANx->RF0R & (CAN_FLAG & 0x000FFFFF)) != (uint32_t)RESET)
    { 
      /* CAN_FLAG is set */
      bitstatus = SET;
    }
    else
    { 
      /* CAN_FLAG is reset */
      bitstatus = RESET;
    }
  }
  else /* If(CAN_FLAG & CAN_FLAGS_RF1R != (uint32_t)RESET) */
  { 
    /* Check the status of the specified CAN flag */
    if ((uint32_t)(CANx->RF1R & (CAN_FLAG & 0x000FFFFF)) != (uint32_t)RESET)
    { 
      /* CAN_FLAG is set */
      bitstatus = SET;
    }
    else
    { 
      /* CAN_FLAG is reset */
      bitstatus = RESET;
    }
  }
  /* Return the CAN_FLAG status */
  return  bitstatus;
}