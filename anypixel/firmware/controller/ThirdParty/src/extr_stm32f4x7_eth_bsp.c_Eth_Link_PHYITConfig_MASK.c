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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ETH_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PHY_MICR ; 
 int PHY_MICR_INT_EN ; 
 int PHY_MICR_INT_OE ; 
 int /*<<< orphan*/  PHY_MISR ; 
 scalar_t__ PHY_MISR_LINK_INT_EN ; 

uint32_t FUNC2(uint16_t PHYAddress)
{
  uint16_t tmpreg = 0;

  /* Read MICR register */
  tmpreg = FUNC0(PHYAddress, PHY_MICR);

  /* Enable output interrupt events to signal via the INT pin */
  tmpreg |= (uint16_t)(PHY_MICR_INT_EN | PHY_MICR_INT_OE);
  if(!(FUNC1(PHYAddress, PHY_MICR, tmpreg)))
  {
    /* Return ERROR in case of write timeout */
    return ETH_ERROR;
  }

  /* Read MISR register */
  tmpreg = FUNC0(PHYAddress, PHY_MISR);

  /* Enable Interrupt on change of link status */
  tmpreg |= (uint16_t)PHY_MISR_LINK_INT_EN;
  if(!(FUNC1(PHYAddress, PHY_MISR, tmpreg)))
  {
    /* Return ERROR in case of write timeout */
    return ETH_ERROR;
  }
  /* Return SUCCESS */
  return ETH_SUCCESS;
}