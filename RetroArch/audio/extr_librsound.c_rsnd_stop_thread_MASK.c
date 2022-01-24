#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  thread; int /*<<< orphan*/  cond_mutex; int /*<<< orphan*/  cond; } ;
struct TYPE_5__ {TYPE_1__ thread; scalar_t__ thread_active; } ;
typedef  TYPE_2__ rsound_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(rsound_t *rd)
{
   if ( rd->thread_active )
   {

      FUNC0("[RSound] Shutting down thread.\n");

      FUNC2(rd->thread.cond_mutex);
      rd->thread_active = 0;
      FUNC1(rd->thread.cond);
      FUNC3(rd->thread.cond_mutex);

      FUNC4(rd->thread.thread);
      FUNC0("[RSound] Thread joined successfully.\n");

      return 0;
   }
   else
   {
      FUNC0("Thread is already shut down.\n");
      return 0;
   }
}