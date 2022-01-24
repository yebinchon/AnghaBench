#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  chrm_mod; int /*<<< orphan*/  gama_mod; int /*<<< orphan*/  srgb_mod; TYPE_2__* pm; } ;
typedef  TYPE_1__ transform_display ;
struct TYPE_11__ {scalar_t__ current_encoding; int /*<<< orphan*/  current_gamma; } ;
typedef  TYPE_2__ png_modifier ;

/* Variables and functions */
 int /*<<< orphan*/  PNG_sRGB_INTENT_ABSOLUTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(transform_display *this)
{
   /* Set up the png_modifier '_current' fields then use these to determine how
    * to add appropriate chunks.
    */
   png_modifier *pm = this->pm;

   FUNC4(pm);

   if (FUNC3(pm))
   {
      if (FUNC2(pm))
         FUNC5(&this->srgb_mod, pm, PNG_sRGB_INTENT_ABSOLUTE);

      else
      {
         /* Set gAMA and cHRM separately. */
         FUNC1(&this->gama_mod, pm, pm->current_gamma);

         if (pm->current_encoding != 0)
            FUNC0(&this->chrm_mod, pm, pm->current_encoding);
      }
   }
}