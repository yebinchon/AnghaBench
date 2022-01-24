#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  mainloop; } ;
typedef  TYPE_1__ pa_t ;
typedef  int /*<<< orphan*/  pa_context ;

/* Variables and functions */
#define  PA_CONTEXT_FAILED 130 
#define  PA_CONTEXT_READY 129 
#define  PA_CONTEXT_TERMINATED 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(pa_context *c, void *data)
{
   pa_t *pa = (pa_t*)data;

   switch (FUNC0(c))
   {
      case PA_CONTEXT_READY:
      case PA_CONTEXT_TERMINATED:
      case PA_CONTEXT_FAILED:
         FUNC1(pa->mainloop, 0);
         break;
      default:
         break;
   }
}