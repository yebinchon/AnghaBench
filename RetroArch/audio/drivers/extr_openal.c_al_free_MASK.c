#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ handle; scalar_t__ ctx; struct TYPE_4__* res_buf; struct TYPE_4__* buffers; int /*<<< orphan*/  num_buffers; int /*<<< orphan*/  source; } ;
typedef  TYPE_1__ al_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(void *data)
{
   al_t *al = (al_t*)data;

   if (!al)
      return;

   FUNC2(al->source);
   FUNC1(1, &al->source);

   if (al->buffers)
      FUNC0(al->num_buffers, al->buffers);

   FUNC6(al->buffers);
   FUNC6(al->res_buf);
   FUNC5(NULL);

   if (al->ctx)
      FUNC4(al->ctx);
   if (al->handle)
      FUNC3(al->handle);
   FUNC6(al);
}