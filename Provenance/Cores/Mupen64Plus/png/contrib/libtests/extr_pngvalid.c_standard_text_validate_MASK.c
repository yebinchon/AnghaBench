#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* ps; } ;
typedef  TYPE_3__ standard_display ;
typedef  int png_uint_32 ;
typedef  int /*<<< orphan*/ * png_textp ;
typedef  int /*<<< orphan*/  png_infop ;
typedef  int /*<<< orphan*/  png_const_structp ;
struct TYPE_6__ {TYPE_1__* current; } ;
struct TYPE_5__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static void
FUNC4(standard_display *dp, png_const_structp pp,
   png_infop pi, int check_end)
{
   png_textp tp = NULL;
   png_uint_32 num_text = FUNC1(pp, pi, &tp, NULL);

   if (num_text == 2 && tp != NULL)
   {
      FUNC3(pp, tp, "image name", dp->ps->current->name);

      /* This exists because prior to 1.5.18 the progressive reader left the
       * png_struct z_stream unreset at the end of the image, so subsequent
       * attempts to use it simply returns Z_STREAM_END.
       */
      if (check_end)
         FUNC3(pp, tp+1, "end marker", "end");
   }

   else
   {
      char msg[64];

      FUNC2(msg, "expected two text items, got %lu",
         (unsigned long)num_text);
      FUNC0(pp, msg);
   }
}