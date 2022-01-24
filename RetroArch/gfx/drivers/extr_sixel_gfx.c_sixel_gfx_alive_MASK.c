#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ctx_data; TYPE_1__* ctx_driver; } ;
typedef  TYPE_2__ sixel_t ;
typedef  int /*<<< orphan*/  gfx_ctx_size_t ;
struct TYPE_3__ {int /*<<< orphan*/  (* check_window ) (int /*<<< orphan*/ ,int*,int*,unsigned int*,unsigned int*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  RARCH_CTL_IS_SHUTDOWN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int*,unsigned int*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,unsigned int*) ; 

__attribute__((used)) static bool FUNC4(void *data)
{
   gfx_ctx_size_t size_data;
   unsigned temp_width  = 0;
   unsigned temp_height = 0;
   bool quit            = false;
   bool resize          = false;
   bool is_shutdown     = FUNC0(RARCH_CTL_IS_SHUTDOWN, NULL);
   sixel_t *sixel       = (sixel_t*)data;

   /* Needed because some context drivers don't track their sizes */
   FUNC2(&temp_width, &temp_height);

   sixel->ctx_driver->check_window(sixel->ctx_data,
            &quit, &resize, &temp_width, &temp_height, is_shutdown);

   if (temp_width != 0 && temp_height != 0)
      FUNC3(&temp_width, &temp_height);

   return true;
}