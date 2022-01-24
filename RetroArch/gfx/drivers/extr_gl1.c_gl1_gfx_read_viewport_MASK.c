#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {unsigned int width; unsigned int height; } ;
struct TYPE_5__ {int /*<<< orphan*/ * readback_buffer_screenshot; TYPE_1__ vp; } ;
typedef  TYPE_2__ gl1_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (void const*,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static bool FUNC5(void *data, uint8_t *buffer, bool is_idle)
{
   unsigned num_pixels = 0;
   gl1_t *gl1 = (gl1_t*)data;

   if (!gl1)
      return false;

   FUNC1(gl1, false);

   num_pixels = gl1->vp.width * gl1->vp.height;

   gl1->readback_buffer_screenshot = FUNC2(num_pixels * sizeof(uint32_t));

   if (!gl1->readback_buffer_screenshot)
      goto error;

   if (!is_idle)
      FUNC3();

   FUNC4(
         (const void*)gl1->readback_buffer_screenshot,
         buffer,
         num_pixels);

   FUNC0(gl1->readback_buffer_screenshot);
   gl1->readback_buffer_screenshot = NULL;

   FUNC1(gl1, true);
   return true;

error:
   FUNC1(gl1, true);

   return false;
}