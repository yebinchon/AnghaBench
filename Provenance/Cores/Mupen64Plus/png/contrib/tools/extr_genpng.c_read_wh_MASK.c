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
typedef  int /*<<< orphan*/  png_uint_32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 unsigned long FUNC2 (char const*,char**,int) ; 

__attribute__((used)) static png_uint_32
FUNC3(const char *name, const char *str)
   /* read a PNG width or height */
{
   char *ep = NULL;
   unsigned long ul = FUNC2(str, &ep, 10);

   if (ep != NULL && *ep == 0 && ul > 0 && ul <= 0x7fffffff)
      return (png_uint_32)/*SAFE*/ul;

   FUNC1(stderr, "genpng: %s: invalid number %s\n", name, str);
   FUNC0(1);
}