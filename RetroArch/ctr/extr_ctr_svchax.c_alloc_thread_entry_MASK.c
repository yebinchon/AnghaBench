#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  alloc_size; int /*<<< orphan*/  alloc_address; } ;
typedef  TYPE_1__ mch2_vars_t ;

/* Variables and functions */
 int /*<<< orphan*/  MEMOP_ALLOC ; 
 int MEMPERM_READ ; 
 int MEMPERM_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(mch2_vars_t* mch2)
{
   u32 tmp;

   FUNC0(&tmp, mch2->alloc_address, 0x0, mch2->alloc_size, MEMOP_ALLOC, MEMPERM_READ | MEMPERM_WRITE);
   FUNC1();
}