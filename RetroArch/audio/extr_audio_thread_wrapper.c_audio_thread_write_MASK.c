#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
struct TYPE_4__ {int alive; int /*<<< orphan*/  lock; int /*<<< orphan*/  cond; int /*<<< orphan*/  driver_data; TYPE_1__* driver; } ;
typedef  TYPE_2__ audio_thread_t ;
struct TYPE_3__ {scalar_t__ (* write ) (int /*<<< orphan*/ ,void const*,size_t) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void const*,size_t) ; 

__attribute__((used)) static ssize_t FUNC4(void *data, const void *buf, size_t size)
{
   ssize_t ret;
   audio_thread_t *thr = (audio_thread_t*)data;

   if (!thr)
      return 0;

   ret = thr->driver->write(thr->driver_data, buf, size);

   if (ret < 0)
   {
      FUNC1(thr->lock);
      thr->alive = false;
      FUNC0(thr->cond);
      FUNC2(thr->lock);
   }

   return ret;
}