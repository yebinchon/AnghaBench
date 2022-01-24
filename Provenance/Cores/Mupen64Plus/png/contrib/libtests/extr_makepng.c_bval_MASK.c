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
typedef  int /*<<< orphan*/  png_const_structrp ;
typedef  scalar_t__* png_charp ;
typedef  int /*<<< orphan*/  png_byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned long FUNC1 (scalar_t__*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static png_byte
FUNC2(png_const_structrp png_ptr, png_charp param, unsigned int maxval)
{
   char *endptr = NULL;
   unsigned long int l = FUNC1(param, &endptr, 0/*base*/);

   if (param[0] && *endptr == 0 && l <= maxval)
      return (png_byte)l;

   else
      FUNC0(png_ptr, "sBIT: invalid sBIT value");
}