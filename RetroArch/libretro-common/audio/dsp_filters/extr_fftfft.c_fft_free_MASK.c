#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* phase_lut; struct TYPE_4__* bitinverse_buffer; struct TYPE_4__* interleave_buffer; } ;
typedef  TYPE_1__ fft_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1(fft_t *fft)
{
   if (!fft)
      return;

   FUNC0(fft->interleave_buffer);
   FUNC0(fft->bitinverse_buffer);
   FUNC0(fft->phase_lut);
   FUNC0(fft);
}