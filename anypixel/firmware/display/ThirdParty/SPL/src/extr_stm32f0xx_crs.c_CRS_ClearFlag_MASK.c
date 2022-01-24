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
typedef  int uint32_t ;
struct TYPE_2__ {int ICR; } ;

/* Variables and functions */
 TYPE_1__* CRS ; 
 int CRS_ICR_ERRC ; 
 int FLAG_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(uint32_t CRS_FLAG)
{
  /* Check the parameters */
  FUNC1(FUNC0(CRS_FLAG));
  
  if ((CRS_FLAG & FLAG_MASK)!= 0)
  {
    CRS->ICR |= CRS_ICR_ERRC;  
  }
  else
  {
    CRS->ICR |= CRS_FLAG;
  }
}