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

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static u32 FUNC2(u32 a)
{
  u32 d;

  if ((a & ~0x0f) != 0xa15000)
    return FUNC1(a);

  d = FUNC0(a & ~1);
  if (!(a & 1))
    d >>= 8;
  return d;
}