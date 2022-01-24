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
typedef  int /*<<< orphan*/  sixel_output_t ;
typedef  int /*<<< orphan*/  sixel_dither_t ;
typedef  int /*<<< orphan*/  SIXELSTATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIXEL_LARGE_AUTO ; 
 int /*<<< orphan*/  SIXEL_QUALITY_AUTO ; 
 int /*<<< orphan*/  SIXEL_REP_AUTO ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sixel_write ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static SIXELSTATUS FUNC7(unsigned char *pixbuf, int width, int height,
      int ncolors, int pixelformat)
{
   sixel_output_t *context;
   sixel_dither_t *dither;
   SIXELSTATUS status;

   context = FUNC5(sixel_write, stdout);
   dither = FUNC1(ncolors);
   status = FUNC2(dither, pixbuf,
         width, height,
         pixelformat,
         SIXEL_LARGE_AUTO,
         SIXEL_REP_AUTO,
         SIXEL_QUALITY_AUTO);
   if (FUNC0(status))
      return status;
   status = FUNC4(pixbuf, width, height,
         pixelformat, dither, context);
   if (FUNC0(status))
      return status;
   FUNC6(context);
   FUNC3(dither);

   return status;
}