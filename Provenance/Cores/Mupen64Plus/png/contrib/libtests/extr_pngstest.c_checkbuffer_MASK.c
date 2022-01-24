#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ allocsize; scalar_t__ buffer; } ;
typedef  TYPE_1__ Image ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC4(Image *image, const char *arg)
{
   if (FUNC0(image->buffer, 95))
   {
      FUNC2(stdout);
      FUNC3(stderr, "%s: overwrite at start of image buffer\n", arg);
      FUNC1(1);
   }

   if (FUNC0(image->buffer+16+image->allocsize, 95))
   {
      FUNC2(stdout);
      FUNC3(stderr, "%s: overwrite at end of image buffer\n", arg);
      FUNC1(1);
   }
}