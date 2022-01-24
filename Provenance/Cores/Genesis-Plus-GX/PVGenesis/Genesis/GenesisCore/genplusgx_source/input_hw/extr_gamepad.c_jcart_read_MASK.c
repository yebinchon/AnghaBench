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

/* Variables and functions */
 int FUNC0 (int) ; 

unsigned int FUNC1(unsigned int address)
{
   /* TH2 output read is fixed to zero (fixes Micro Machines 2) */
   return ((FUNC0(5) & 0x7F) | ((FUNC0(6) & 0x3F) << 8));
}