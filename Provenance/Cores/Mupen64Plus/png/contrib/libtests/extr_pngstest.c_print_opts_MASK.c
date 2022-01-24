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
typedef  int png_uint_32 ;

/* Variables and functions */
 int ACCUMULATE ; 
 int FAST_WRITE ; 
 int GBG_ERROR ; 
 int KEEP_GOING ; 
 int KEEP_TMPFILES ; 
 int NO_RESEED ; 
 int STRICT ; 
 int USE_FILE ; 
 int USE_STDIO ; 
 int VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int sRGB_16BIT ; 

__attribute__((used)) static void
FUNC1(png_uint_32 opts)
{
   if (opts & USE_FILE)
      FUNC0(" --file");
   if (opts & USE_STDIO)
      FUNC0(" --stdio");
   if (!(opts & STRICT))
      FUNC0(" --nostrict");
   if (opts & VERBOSE)
      FUNC0(" --verbose");
   if (opts & KEEP_TMPFILES)
      FUNC0(" --preserve");
   if (opts & KEEP_GOING)
      FUNC0(" --keep-going");
   if (opts & ACCUMULATE)
      FUNC0(" --accumulate");
   if (!(opts & FAST_WRITE)) /* --fast is currently the default */
      FUNC0(" --slow");
   if (opts & sRGB_16BIT)
      FUNC0(" --sRGB-16bit");
   if (opts & NO_RESEED)
      FUNC0(" --noreseed");
#if PNG_LIBPNG_VER < 10700 /* else on by default */
   if (opts & GBG_ERROR)
      FUNC0(" --fault-gbg-warning");
#endif
}