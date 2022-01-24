#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct Pass {int dummy; } ;
typedef  int /*<<< orphan*/  rglgen_proc_address_t ;
struct TYPE_6__ {unsigned int steps; unsigned int depth; int size; int block_size; unsigned int passes_size; int sliding_size; int /*<<< orphan*/ * sliding; struct Pass* passes; } ;
typedef  TYPE_1__ fft_t ;
typedef  int /*<<< orphan*/  GLshort ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(fft_t *fft, unsigned fft_steps,
      rglgen_proc_address_t proc, unsigned fft_depth)
{
   FUNC5(proc);

   fft->steps       = fft_steps;
   fft->depth       = fft_depth;
   fft->size        = 1 << fft_steps;
   fft->block_size  = fft->size / 4 + 1;

   fft->passes_size = fft_steps;
   fft->passes      = (struct Pass*)FUNC1(fft->passes_size, sizeof(struct Pass));

   if (!fft->passes)
      return false;

   fft->sliding_size = 2 * fft->size;
   fft->sliding      = (GLshort*)FUNC1(fft->sliding_size, sizeof(GLshort));

   if (!fft->sliding)
      return false;

   FUNC0();
   FUNC4(fft);
   FUNC0();
   FUNC2(fft);
   FUNC0();
   FUNC3(fft);
   FUNC0();

   return true;
}