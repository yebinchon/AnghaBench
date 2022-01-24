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
struct TYPE_3__ {int /*<<< orphan*/  target_val; scalar_t__ target_kaddr; int /*<<< orphan*/  lock; int /*<<< orphan*/  started_event; } ;
typedef  TYPE_1__ mch2_thread_args_t ;

/* Variables and functions */
 int /*<<< orphan*/  U64_MAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(mch2_thread_args_t* args)
{
   FUNC1(args->started_event);
   FUNC2(args->lock, U64_MAX);

   if (args->target_kaddr)
      FUNC3(args->target_kaddr, args->target_val);

   FUNC0();
}