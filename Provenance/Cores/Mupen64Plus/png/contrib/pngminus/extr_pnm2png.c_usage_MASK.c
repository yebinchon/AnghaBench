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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC1()
{
  FUNC0 (stderr, "PNM2PNG\n");
  FUNC0 (stderr, "   by Willem van Schaik, 1999\n");
#ifdef __TURBOC__
  fprintf (stderr, "   for Turbo-C and Borland-C compilers\n");
#else
  FUNC0 (stderr, "   for Linux (and Unix) compilers\n");
#endif
  FUNC0 (stderr, "Usage:  pnm2png [options] <file>.<pnm> [<file>.png]\n");
  FUNC0 (stderr, "   or:  ... | pnm2png [options]\n");
  FUNC0 (stderr, "Options:\n");
  FUNC0 (stderr, "   -i[nterlace]   write png-file with interlacing on\n");
  FUNC0 (stderr,
      "   -a[lpha] <file>.pgm read PNG alpha channel as pgm-file\n");
  FUNC0 (stderr, "   -h | -?  print this help-information\n");
}