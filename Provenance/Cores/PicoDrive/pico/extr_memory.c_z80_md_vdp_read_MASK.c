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
 int /*<<< orphan*/  EL_ANOMALY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned short,int) ; 

__attribute__((used)) static unsigned char FUNC1(unsigned short a)
{
  // TODO?
  FUNC0(EL_ANOMALY, "z80 invalid r8 [%06x] %02x", a, 0xff);
  return 0xff;
}