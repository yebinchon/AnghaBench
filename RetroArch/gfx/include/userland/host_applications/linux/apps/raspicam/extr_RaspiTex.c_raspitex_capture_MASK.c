#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {int request; size_t size; int /*<<< orphan*/  start_sem; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  completed_sem; } ;
struct TYPE_6__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; TYPE_1__ capture; } ;
typedef  TYPE_2__ RASPITEX_STATE ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 

int FUNC8(RASPITEX_STATE *state, FILE *output_file)
{
   int rc = 0;
   uint8_t *buffer = NULL;
   size_t size = 0;

   FUNC4("%s: state %p file %p", VCOS_FUNCTION,
                  state, output_file);

   if (state && output_file)
   {
      /* Only request one capture at a time */
      FUNC6(&state->capture.start_sem);
      state->capture.request = 1;

      /* Wait for capture to start */
      FUNC6(&state->capture.completed_sem);

      /* Take ownership of the captured buffer */
      buffer = state->capture.buffer;
      size = state->capture.size;

      state->capture.request = 0;
      state->capture.buffer = 0;
      state->capture.size = 0;

      /* Allow another capture to be requested */
      FUNC5(&state->capture.start_sem);
   }
   if (size == 0 || ! buffer)
   {
      FUNC3("%s: capture failed", VCOS_FUNCTION);
      rc = -1;
      goto end;
   }

   FUNC2(buffer, size);
   rc = FUNC7(output_file, state->width, state->height, buffer, size);
   FUNC0(output_file);

end:
   FUNC1(buffer);
   return rc;
}