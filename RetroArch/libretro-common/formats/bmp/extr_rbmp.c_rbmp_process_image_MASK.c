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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/ * output_image; int /*<<< orphan*/  buff_data; } ;
typedef  TYPE_1__ rbmp_t ;

/* Variables and functions */
 int IMAGE_PROCESS_END ; 
 int IMAGE_PROCESS_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,unsigned int*,unsigned int*,int*,int) ; 

int FUNC2(rbmp_t *rbmp, void **buf_data,
      size_t size, unsigned *width, unsigned *height)
{
   int comp;

   if (!rbmp)
      return IMAGE_PROCESS_ERROR;

   rbmp->output_image   = (uint32_t*)FUNC1(rbmp->buff_data,
                           (int)size, width, height, &comp, 4);
   *buf_data             = rbmp->output_image;

   FUNC0(rbmp->output_image, *width, *height);

   return IMAGE_PROCESS_END;
}