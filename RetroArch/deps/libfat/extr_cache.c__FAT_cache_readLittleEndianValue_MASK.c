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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  sec_t ;
typedef  int /*<<< orphan*/  CACHE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool FUNC3 (CACHE* cache, uint32_t *value, sec_t sector, unsigned int offset, int num_bytes)
{
  uint8_t buf[4];
  if (!FUNC0(cache, buf, sector, offset, num_bytes)) return false;

  switch(num_bytes)
  {
     case 1: *value = buf[0]; break;
     case 2: *value = FUNC1(buf,0); break;
     case 4: *value = FUNC2(buf,0); break;
     default: return false;
  }
  return true;
}