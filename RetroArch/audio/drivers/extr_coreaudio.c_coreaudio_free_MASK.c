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
struct TYPE_3__ {int /*<<< orphan*/  cond; int /*<<< orphan*/  lock; scalar_t__ buffer; int /*<<< orphan*/  dev; scalar_t__ dev_alive; } ;
typedef  TYPE_1__ coreaudio_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void *data)
{
   coreaudio_t *dev = (coreaudio_t*)data;

   if (!dev)
      return;

   if (dev->dev_alive)
   {
      FUNC1(dev->dev);
#if (defined(__MACH__) && (defined(__ppc__) || defined(__ppc64__)))
      CloseComponent(dev->dev);
#else
      FUNC0(dev->dev);
#endif
   }

   if (dev->buffer)
      FUNC3(dev->buffer);

   FUNC6(dev->lock);
   FUNC5(dev->cond);

   FUNC4(dev);
}