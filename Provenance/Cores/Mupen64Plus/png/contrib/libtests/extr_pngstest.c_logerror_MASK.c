#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * opaque; int /*<<< orphan*/  message; scalar_t__ warning_or_error; } ;
struct TYPE_4__ {char* file_name; TYPE_2__ image; } ;
typedef  TYPE_1__ Image ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC3(Image *image, const char *a1, const char *a2, const char *a3)
{
   FUNC0(stdout);
   if (image->image.warning_or_error)
      FUNC1(stderr, "%s%s%s: %d\n", a1, a2, a3, image->image.message);

   else
      FUNC1(stderr, "%s%s%s\n", a1, a2, a3);

   if (image->image.opaque != NULL)
   {
      FUNC1(stderr, "%s: image opaque pointer non-NULL on error\n",
         image->file_name);
      FUNC2(&image->image);
   }

   return 0;
}