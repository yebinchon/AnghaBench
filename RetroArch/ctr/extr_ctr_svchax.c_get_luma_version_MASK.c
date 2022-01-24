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
typedef  scalar_t__ s64 ;
typedef  int Result ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int,int /*<<< orphan*/ ) ; 

Result FUNC4(u32 *major, u32 *minor) {
  s64 out;
  u32 version;

  if (FUNC2(FUNC3(&out, 0x10000, 0)))
    return -1;

  version = (u32)out;
  *major = FUNC0(version);
  *minor = FUNC1(version);
  return 0;
}