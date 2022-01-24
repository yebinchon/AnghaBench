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
typedef  scalar_t__ png_uint_16 ;
typedef  int /*<<< orphan*/  png_structp ;
typedef  int /*<<< orphan*/  png_infop ;
typedef  char** png_charpp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  stderr ; 
 unsigned long FUNC4 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(png_structp png_ptr, png_infop info_ptr, int nparams,
      png_charpp params)
{
   int i;
   png_uint_16 freq[256];

   /* libpng takes the count from the PLTE count; we don't check it here but we
    * do set the array to 0 for unspecified entries.
    */
   FUNC2(freq, 0, sizeof freq);
   for (i=0; i<nparams; ++i)
   {
      char *endptr = NULL;
      unsigned long int l = FUNC4(params[i], &endptr, 0/*base*/);

      if (params[i][0] && *endptr == 0 && l <= 65535)
         freq[i] = (png_uint_16)l;

      else
      {
         FUNC1(stderr, "hIST[%d]: %s: invalid frequency\n", i, params[i]);
         FUNC0(1);
      }
   }

   FUNC3(png_ptr, info_ptr, freq);
}