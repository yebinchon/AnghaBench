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
struct TYPE_3__ {char* file; char* test; int /*<<< orphan*/ * end_ptr; int /*<<< orphan*/ * info_ptr; int /*<<< orphan*/ * png_ptr; } ;
typedef  TYPE_1__ display ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC3(display *d)
{
   FUNC2(&d->png_ptr, &d->info_ptr, &d->end_ptr);

   /* This must not happen - it might cause an app crash */
   if (d->png_ptr != NULL || d->info_ptr != NULL || d->end_ptr != NULL)
   {
      FUNC1(stderr, "%s(%s): png_destroy_read_struct error\n", d->file,
         d->test);
      FUNC0(1);
   }
}