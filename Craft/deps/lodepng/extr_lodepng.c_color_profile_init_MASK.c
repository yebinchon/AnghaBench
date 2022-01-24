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
struct TYPE_9__ {int sixteenbit_done; int colored_done; int alpha_done; unsigned char* palette; int maxnumcolors; int greybits; int greybits_done; scalar_t__ numcolors_done; int /*<<< orphan*/  tree; scalar_t__ numcolors; scalar_t__ alpha; scalar_t__ key; scalar_t__ colored; scalar_t__ sixteenbit; } ;
struct TYPE_8__ {int bitdepth; } ;
typedef  TYPE_1__ LodePNGColorMode ;
typedef  TYPE_2__ ColorProfile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__ const*) ; 
 int FUNC2 (TYPE_1__ const*) ; 
 scalar_t__ FUNC3 (TYPE_1__ const*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(ColorProfile* profile, const LodePNGColorMode* mode)
{
  profile->sixteenbit = 0;
  profile->sixteenbit_done = mode->bitdepth == 16 ? 0 : 1;

  profile->colored = 0;
  profile->colored_done = FUNC3(mode) ? 1 : 0;

  profile->key = 0;
  profile->alpha = 0;
  profile->alpha_done = FUNC1(mode) ? 0 : 1;

  profile->numcolors = 0;
  FUNC0(&profile->tree);
  profile->palette = (unsigned char*)FUNC4(1024);
  profile->maxnumcolors = 257;
  if(FUNC2(mode) <= 8)
  {
    int bpp = FUNC2(mode);
    profile->maxnumcolors = bpp == 1 ? 2 : (bpp == 2 ? 4 : (bpp == 4 ? 16 : 256));
  }
  profile->numcolors_done = 0;

  profile->greybits = 1;
  profile->greybits_done = FUNC2(mode) == 1 ? 1 : 0;
}