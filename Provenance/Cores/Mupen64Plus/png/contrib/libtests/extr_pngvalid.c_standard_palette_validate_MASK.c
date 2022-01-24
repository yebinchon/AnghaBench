#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* store_palette ;
struct TYPE_8__ {scalar_t__ is_transparent; int npalette; TYPE_1__* palette; } ;
typedef  TYPE_3__ standard_display ;
typedef  int /*<<< orphan*/  png_infop ;
typedef  int /*<<< orphan*/  png_const_structp ;
struct TYPE_7__ {scalar_t__ red; scalar_t__ green; scalar_t__ blue; scalar_t__ alpha; } ;
struct TYPE_6__ {scalar_t__ red; scalar_t__ green; scalar_t__ blue; scalar_t__ alpha; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (char*,int,size_t,char*) ; 
 size_t FUNC3 (char*,int,size_t,int) ; 

__attribute__((used)) static void
FUNC4(standard_display *dp, png_const_structp pp,
   png_infop pi)
{
   int npalette;
   store_palette palette;

   if (FUNC1(palette, &npalette, pp, pi) != dp->is_transparent)
      FUNC0(pp, "validate: palette transparency changed");

   if (npalette != dp->npalette)
   {
      size_t pos = 0;
      char msg[64];

      pos = FUNC2(msg, sizeof msg, pos, "validate: palette size changed: ");
      pos = FUNC3(msg, sizeof msg, pos, dp->npalette);
      pos = FUNC2(msg, sizeof msg, pos, " -> ");
      pos = FUNC3(msg, sizeof msg, pos, npalette);
      FUNC0(pp, msg);
   }

   {
      int i = npalette; /* npalette is aliased */

      while (--i >= 0)
         if (palette[i].red != dp->palette[i].red ||
            palette[i].green != dp->palette[i].green ||
            palette[i].blue != dp->palette[i].blue ||
            palette[i].alpha != dp->palette[i].alpha)
            FUNC0(pp, "validate: PLTE or tRNS chunk changed");
   }
}