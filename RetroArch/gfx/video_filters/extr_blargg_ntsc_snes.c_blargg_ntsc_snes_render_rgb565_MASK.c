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
typedef  int /*<<< orphan*/  uint16_t ;
struct filter_data {int /*<<< orphan*/  burst_toggle; int /*<<< orphan*/  burst; int /*<<< orphan*/  ntsc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int,int,int) ; 

__attribute__((used)) static void FUNC2(void *data, int width, int height,
      int first, int last,
      uint16_t *input, int pitch, uint16_t *output, int outpitch)
{
   struct filter_data *filt = (struct filter_data*)data;
   if(width <= 256)
      FUNC0(filt->ntsc, input, pitch, filt->burst,
            width, height, output, outpitch * 2, first, last);
   else
      FUNC1(filt->ntsc, input, pitch, filt->burst,
            width, height, output, outpitch * 2, first, last);

   filt->burst ^= filt->burst_toggle;
}