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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int /*<<< orphan*/  MEMOP_ALLOC_LINEAR ; 
 int /*<<< orphan*/  MEMOP_FREE ; 
 int MEMPERM_READ ; 
 int MEMPERM_WRITE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(u32 val1, u32 val2)
{
   u32 linear_buffer;
   u8* flush_buffer;
   u32 tmp;

   u32* next_ptr3;
   u32* prev_ptr3;

   u32* next_ptr1;
   u32* prev_ptr6;

   FUNC1(&linear_buffer, 0, 0, 0x10000, MEMOP_ALLOC_LINEAR, MEMPERM_READ | MEMPERM_WRITE);

   flush_buffer = (u8*)(linear_buffer + 0x8000);

   FUNC1(&tmp, linear_buffer + 0x1000, 0, 0x1000, MEMOP_FREE, 0);
   FUNC1(&tmp, linear_buffer + 0x3000, 0, 0x2000, MEMOP_FREE, 0);
   FUNC1(&tmp, linear_buffer + 0x6000, 0, 0x1000, MEMOP_FREE, 0);

   next_ptr1 = (u32*)(linear_buffer + 0x0004);
   FUNC0(linear_buffer + 0x0000, linear_buffer + 0x1000, 16, flush_buffer);

   next_ptr3 = (u32*)(linear_buffer + 0x2004);
   prev_ptr3 = (u32*)(linear_buffer + 0x2008);
   FUNC0(linear_buffer + 0x2000, linear_buffer + 0x3000, 16, flush_buffer);

   prev_ptr6 = (u32*)(linear_buffer + 0x5008);
   FUNC0(linear_buffer + 0x5000, linear_buffer + 0x6000, 16, flush_buffer);

   *next_ptr1 = *next_ptr3;
   *prev_ptr6 = *prev_ptr3;

   *prev_ptr3 = val1 - 4;
   *next_ptr3 = val2;
   FUNC0(linear_buffer + 0x3000, linear_buffer + 0x2000, 16, flush_buffer);
   FUNC1(&tmp, 0, 0, 0x2000, MEMOP_ALLOC_LINEAR, MEMPERM_READ | MEMPERM_WRITE);

   FUNC0(linear_buffer + 0x1000, linear_buffer + 0x0000, 16, flush_buffer);
   FUNC0(linear_buffer + 0x6000, linear_buffer + 0x5000, 16, flush_buffer);

   FUNC1(&tmp, linear_buffer + 0x0000, 0, 0x1000, MEMOP_FREE, 0);
   FUNC1(&tmp, linear_buffer + 0x2000, 0, 0x4000, MEMOP_FREE, 0);
   FUNC1(&tmp, linear_buffer + 0x7000, 0, 0x9000, MEMOP_FREE, 0);

}