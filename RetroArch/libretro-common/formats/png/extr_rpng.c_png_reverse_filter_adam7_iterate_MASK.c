#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct png_ihdr {int dummy; } ;
struct rpng_process {size_t pass_pos; int adam7_pass_initialized; scalar_t__ pass_size; int /*<<< orphan*/  pass_height; int /*<<< orphan*/  pass_width; int /*<<< orphan*/ * data; int /*<<< orphan*/  total_out; int /*<<< orphan*/  adam7_restore_buf_size; int /*<<< orphan*/  inflate_buf; struct png_ihdr const ihdr; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int IMAGE_PROCESS_END ; 
 int IMAGE_PROCESS_ERROR ; 
 int IMAGE_PROCESS_ERROR_END ; 
 int IMAGE_PROCESS_NEXT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * passes ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct png_ihdr const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct png_ihdr const*,struct rpng_process*) ; 
 int FUNC4 (int /*<<< orphan*/ **,struct png_ihdr const*,struct rpng_process*) ; 

__attribute__((used)) static int FUNC5(uint32_t **data_,
      const struct png_ihdr *ihdr,
      struct rpng_process *pngp)
{
   int        ret = 0;
   bool   to_next = pngp->pass_pos < FUNC0(passes);
   uint32_t *data = *data_;

   if (!to_next)
      return IMAGE_PROCESS_END;

   ret = FUNC3(ihdr, pngp);

   if (ret == 1)
      return IMAGE_PROCESS_NEXT;
   if (ret == -1)
      return IMAGE_PROCESS_ERROR_END;

   if (FUNC3(&pngp->ihdr, pngp) == -1)
      return IMAGE_PROCESS_ERROR;

   do{
      ret = FUNC4(&pngp->data,
            &pngp->ihdr, pngp);
   }while(ret == IMAGE_PROCESS_NEXT);

   if (ret == IMAGE_PROCESS_ERROR || ret == IMAGE_PROCESS_ERROR_END)
      return IMAGE_PROCESS_ERROR;

   pngp->inflate_buf            += pngp->pass_size;
   pngp->adam7_restore_buf_size += pngp->pass_size;

   pngp->total_out              -= pngp->pass_size;

   FUNC2(data,
         ihdr, pngp->data, pngp->pass_width, pngp->pass_height, &passes[pngp->pass_pos]);

   FUNC1(pngp->data);

   pngp->data = NULL;
   pngp->pass_width  = 0;
   pngp->pass_height = 0;
   pngp->pass_size   = 0;
   pngp->adam7_pass_initialized = false;

   return IMAGE_PROCESS_NEXT;
}