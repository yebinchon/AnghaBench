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
struct TYPE_3__ {scalar_t__ buffer; scalar_t__ device; scalar_t__ client; scalar_t__ renderer; int /*<<< orphan*/  write_event; } ;
typedef  TYPE_1__ wasapi_t ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ WAIT_FAILED ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC8(void *wh)
{
   DWORD ir;
   wasapi_t *w        = (wasapi_t*)wh;
   HANDLE write_event = w->write_event;

   FUNC2(w->renderer);
   if (w->client)
      FUNC5(w->client);
   FUNC2(w->client);
   FUNC2(w->device);
   if (w->buffer)
      FUNC6(w->buffer);
   FUNC7(w);

   ir = FUNC4(write_event, 20);
   if (ir == WAIT_FAILED)
   {
      FUNC3("[WASAPI]: WaitForSingleObject failed with error %d.\n", FUNC1());
   }

   /* If event isn't signaled log and leak */
   if (!(ir == WAIT_OBJECT_0))
      return;

   FUNC0(write_event);
}