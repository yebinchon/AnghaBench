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
struct TYPE_3__ {int alive; int can_sleep; int /*<<< orphan*/ * thread; int /*<<< orphan*/  cond; int /*<<< orphan*/  cond_lock; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ ffmpeg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(ffmpeg_t *handle)
{
   if (!handle->thread)
      return;

   FUNC3(handle->cond_lock);
   handle->alive = false;
   handle->can_sleep = false;
   FUNC4(handle->cond_lock);

   FUNC1(handle->cond);
   FUNC5(handle->thread);

   FUNC2(handle->lock);
   FUNC2(handle->cond_lock);
   FUNC0(handle->cond);

   handle->thread = NULL;
}