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
typedef  unsigned int uint8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC1(unsigned int address, unsigned int data)
{
  /* Register offset */
  uint8 offset = (address >> 1) & 0x1f;

  /* Write internal register (full WORD) */
  FUNC0(offset,data);
}