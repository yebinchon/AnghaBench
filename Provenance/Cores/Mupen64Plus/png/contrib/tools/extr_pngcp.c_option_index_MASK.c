#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct display {scalar_t__ errset; } ;
typedef  size_t png_byte ;
struct TYPE_2__ {scalar_t__* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTERNAL_ERROR ; 
 int /*<<< orphan*/  USER_ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct display*,int /*<<< orphan*/ ,char*,int,char const*) ; 
 size_t option_count ; 
 TYPE_1__* options ; 
 scalar_t__ FUNC2 (scalar_t__*,char const*,size_t) ; 

__attribute__((used)) static png_byte
FUNC3(struct display *dp, const char *opt, size_t len)
   /* Return the index (in options[]) of the given option, outputs an error if
    * it does not exist.  Takes the name of the option and a length (number of
    * characters in the name).
    */
{
   png_byte j;

   for (j=0; j<option_count; ++j)
      if (FUNC2(options[j].name, opt, len) == 0 && options[j].name[len] == 0)
         return j;

   /* If the setjmp buffer is set the code is asking for an option index; this
    * is bad.  Otherwise this is the command line option parsing.
    */
   FUNC1(dp, dp->errset ? INTERNAL_ERROR : USER_ERROR,
         "%.*s: unknown option", (int)/*SAFE*/len, opt);
   FUNC0(); /* NOT REACHED */
}