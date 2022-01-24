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
 scalar_t__ BASE_ADDR ; 
 int TARGET_SIZE_2 ; 
 scalar_t__ jump_dirty ; 
 scalar_t__ jump_in ; 
 scalar_t__ jump_out ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3()
{
  int n;
  if (FUNC1 ((void *)BASE_ADDR, 1<<TARGET_SIZE_2) < 0) {FUNC2("munmap() failed\n");}
  for(n=0;n<2048;n++) FUNC0(jump_in+n);
  for(n=0;n<2048;n++) FUNC0(jump_out+n);
  for(n=0;n<2048;n++) FUNC0(jump_dirty+n);
}