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
typedef  int u32 ;
typedef  int u16 ;

/* Variables and functions */
 int /*<<< orphan*/  EL_UIO ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  SekPc ; 
 int* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,...) ; 

__attribute__((used)) static u32 FUNC3(u32 a)
{
  u16 *val;

  if (0xa10000 <= a && a < 0xa12000)
    return FUNC0(a);

  val = FUNC1(a, 0);
  if (val != NULL) {
    FUNC2(EL_UIO, "prot r16 [%06x] %04x @%06x", a, *val, SekPc);
    return *val;
  }
  else {
    FUNC2(EL_UIO, "prot r16 [%06x] MISS @%06x", a, SekPc);
    return 0;
  }
}