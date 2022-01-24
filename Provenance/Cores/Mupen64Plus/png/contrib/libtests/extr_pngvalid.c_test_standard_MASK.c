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
struct TYPE_4__ {int /*<<< orphan*/  use_update_info; int /*<<< orphan*/  this; } ;
typedef  TYPE_1__ png_modifier ;
typedef  int /*<<< orphan*/  png_byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int INTERLACE_LAST ; 
 int PNG_INTERLACE_NONE ; 
 int /*<<< orphan*/  do_read_interlace ; 
 scalar_t__ FUNC2 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(png_modifier* const pm, png_byte const colour_type,
    int bdlo, int const bdhi)
{
   for (; bdlo <= bdhi; ++bdlo)
   {
      int interlace_type;

      for (interlace_type = PNG_INTERLACE_NONE;
           interlace_type < INTERLACE_LAST; ++interlace_type)
      {
         FUNC3(&pm->this, FUNC1(colour_type, FUNC0(bdlo), 0/*palette*/,
            interlace_type, 0, 0, 0), do_read_interlace, pm->use_update_info);

         if (FUNC2(pm))
            return 0;
      }
   }

   return 1; /* keep going */
}