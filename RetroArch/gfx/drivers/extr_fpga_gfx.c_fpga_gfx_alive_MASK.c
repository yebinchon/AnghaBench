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
struct TYPE_3__ {int* quit; int* resize; unsigned int* width; unsigned int* height; } ;
typedef  TYPE_1__ gfx_ctx_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,unsigned int*) ; 

__attribute__((used)) static bool FUNC3(void *data)
{
   gfx_ctx_size_t size_data;
   unsigned temp_width  = 0;
   unsigned temp_height = 0;
   bool quit            = false;
   bool resize          = false;
 
   /* Needed because some context drivers don't track their sizes */
   FUNC1(&temp_width, &temp_height);

   size_data.quit       = &quit;
   size_data.resize     = &resize;
   size_data.width      = &temp_width;
   size_data.height     = &temp_height;

   FUNC0(&size_data);

   if (temp_width != 0 && temp_height != 0)
      FUNC2(&temp_width, &temp_height);

   return true;
}