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
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 

bool FUNC3 (CACHE* cache, const uint32_t value, sec_t sector, unsigned int offset, int size)
{
   uint8_t buf[4] = {0, 0, 0, 0};

   switch(size)
   {
      case 1: buf[0] = value; break;
      case 2: FUNC1(buf, 0, value); break;
      case 4: FUNC2(buf, 0, value); break;
      default: return false;
   }

   return FUNC0(cache, buf, sector, offset, size);
}