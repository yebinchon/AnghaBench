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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int const width; int const height; } ;
typedef  TYPE_1__ RASPITEX_STATE ;

/* Variables and functions */
 scalar_t__ GL_NO_ERROR ; 
 int /*<<< orphan*/  GL_RGBA ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 int /*<<< orphan*/ * FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int const,int const,int const) ; 

int FUNC5(RASPITEX_STATE *state,
                              uint8_t **buffer, size_t *buffer_size)
{
   const int bytes_per_pixel = 4;

   FUNC4("%s: %dx%d %d", VCOS_FUNCTION,
                  state->width, state->height, bytes_per_pixel);

   *buffer_size = state->width * state->height * bytes_per_pixel;
   *buffer = FUNC0(*buffer_size, 1);
   if (! *buffer)
      goto error;

   FUNC3(0, 0, state->width, state->height, GL_RGBA,
                GL_UNSIGNED_BYTE, *buffer);
   if (FUNC2() != GL_NO_ERROR)
      goto error;

   return 0;

error:
   *buffer_size = 0;
   if (*buffer)
      FUNC1(*buffer);
   *buffer = NULL;
   return -1;
}