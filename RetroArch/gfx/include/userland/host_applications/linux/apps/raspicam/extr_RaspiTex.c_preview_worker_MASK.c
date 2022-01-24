#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  name; } ;
struct TYPE_11__ {int (* create_native_window ) (TYPE_3__*) ;int (* gl_init ) (TYPE_3__*) ;int /*<<< orphan*/  (* gl_term ) (TYPE_3__*) ;} ;
struct TYPE_12__ {int preview_stop; TYPE_2__ ops; int /*<<< orphan*/  preview_queue; TYPE_1__* preview_pool; TYPE_4__* preview_port; } ;
struct TYPE_10__ {int /*<<< orphan*/  queue; } ;
typedef  TYPE_3__ RASPITEX_STATE ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_4__ MMAL_PORT_T ;
typedef  int /*<<< orphan*/  MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static void *FUNC9(void *arg)
{
   RASPITEX_STATE* state = arg;
   MMAL_PORT_T *preview_port = state->preview_port;
   MMAL_BUFFER_HEADER_T *buf;
   MMAL_STATUS_T st;
   int rc;

   FUNC8("%s: port %p", VCOS_FUNCTION, preview_port);

   rc = state->ops.create_native_window(state);
   if (rc != 0)
      goto end;

   rc = state->ops.gl_init(state);
   if (rc != 0)
      goto end;

   while (state->preview_stop == 0)
   {
      /* Send empty buffers to camera preview port */
      while ((buf = FUNC2(state->preview_pool->queue)) != NULL)
      {
         st = FUNC1(preview_port, buf);
         if (st != MMAL_SUCCESS)
         {
            FUNC7("Failed to send buffer to %s", preview_port->name);
         }
      }
      /* Process returned buffers */
      if (FUNC3(state) != 0)
      {
         FUNC7("Preview error. Exiting.");
         state->preview_stop = 1;
      }
   }

end:
   /* Make sure all buffers are returned on exit */
   while ((buf = FUNC2(state->preview_queue)) != NULL)
      FUNC0(buf);

   /* Tear down GL */
   state->ops.gl_term(state);
   FUNC8("Exiting preview worker");
   return NULL;
}