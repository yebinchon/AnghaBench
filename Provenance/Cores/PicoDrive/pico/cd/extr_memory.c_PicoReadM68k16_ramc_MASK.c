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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int /*<<< orphan*/  EL_ANOMALY ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  SekPcS68k ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC2(u32 a)
{
  FUNC1(EL_ANOMALY, "ramcart r16: [%06x] @%06x", a, SekPcS68k);
  return FUNC0(a + 1);
}