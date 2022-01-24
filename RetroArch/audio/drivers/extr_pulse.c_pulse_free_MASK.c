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
struct TYPE_3__ {scalar_t__ mainloop; scalar_t__ context; scalar_t__ stream; } ;
typedef  TYPE_1__ pa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static void FUNC7(void *data)
{
   pa_t *pa = (pa_t*)data;

   if (!pa)
      return;

   if (pa->mainloop)
      FUNC6(pa->mainloop);

   if (pa->stream)
   {
      FUNC3(pa->stream);
      FUNC4(pa->stream);
   }

   if (pa->context)
   {
      FUNC1(pa->context);
      FUNC2(pa->context);
   }

   if (pa->mainloop)
      FUNC5(pa->mainloop);

   FUNC0(pa);
}