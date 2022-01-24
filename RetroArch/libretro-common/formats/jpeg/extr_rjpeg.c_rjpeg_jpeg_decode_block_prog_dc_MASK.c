#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ spec_end; int code_bits; scalar_t__ succ_high; int succ_low; TYPE_1__* img_comp; } ;
typedef  TYPE_2__ rjpeg_jpeg ;
typedef  int /*<<< orphan*/  rjpeg_huffman ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_8__ {int dc_pred; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (short*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(
      rjpeg_jpeg *j,
      short data[64],
      rjpeg_huffman *hdc,
      int b)
{
   /* Can't merge DC and AC. Corrupt JPEG? */
   if (j->spec_end != 0)
      return 0;

   if (j->code_bits < 16)
      FUNC2(j);

   if (j->succ_high == 0)
   {
      int t;
      int dc;
      int diff = 0;

      /* first scan for DC coefficient, must be first */
      FUNC0(data,0,64*sizeof(data[0])); /* 0 all the ac values now */
      t       = FUNC4(j, hdc);
      if (t)
         diff = FUNC1(j, t);

      dc      = j->img_comp[b].dc_pred + diff;
      j->img_comp[b].dc_pred = dc;
      data[0] = (short) (dc << j->succ_low);
   }
   else
   {
      /* refinement scan for DC coefficient */
      if (FUNC3(j))
         data[0] += (short) (1 << j->succ_low);
   }
   return 1;
}