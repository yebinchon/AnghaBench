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
struct CONTEXT_T {int /*<<< orphan*/  semaphore; int /*<<< orphan*/  queue; } ;
struct TYPE_3__ {scalar_t__ userdata; } ;
typedef  TYPE_1__ MMAL_PORT_T ;
typedef  int /*<<< orphan*/  MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   struct CONTEXT_T *ctx = (struct CONTEXT_T *)port->userdata;

   /* Queue the decoded video frame */
   FUNC0(ctx->queue, buffer);

   /* Kick the processing thread */
   FUNC1(&ctx->semaphore);
}