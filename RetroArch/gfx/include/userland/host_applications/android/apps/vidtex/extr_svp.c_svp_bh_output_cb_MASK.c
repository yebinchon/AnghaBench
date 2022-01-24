#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ length; int /*<<< orphan*/ * data; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; scalar_t__ userdata; } ;
struct TYPE_9__ {int /*<<< orphan*/  sema; int /*<<< orphan*/  queue; int /*<<< orphan*/  wd_timer; } ;
typedef  TYPE_1__ SVP_T ;
typedef  TYPE_2__ MMAL_PORT_T ;
typedef  TYPE_3__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVP_STOP_EOS ; 
 int /*<<< orphan*/  SVP_WATCHDOG_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buf)
{
   SVP_T *svp = (SVP_T *)port->userdata;

   if (buf->length == 0)
   {
      FUNC1("%s: zero-length buffer => EOS", port->name);
      FUNC4(svp, SVP_STOP_EOS); // This shouldn't be necessary, but it is ...
      FUNC2(buf);
   }
   else if (buf->data == NULL)
   {
      FUNC0("%s: zero buffer handle", port->name);
      FUNC2(buf);
   }
   else
   {
      /* Reset watchdog timer */
      FUNC6(&svp->wd_timer, SVP_WATCHDOG_TIMEOUT_MS);

      /* Enqueue the decoded frame so we can return quickly to MMAL core */
      FUNC3(svp->queue, buf);
   }

   /* Notify worker */
   FUNC5(&svp->sema);
}