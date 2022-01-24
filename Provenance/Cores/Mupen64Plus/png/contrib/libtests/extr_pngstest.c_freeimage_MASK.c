#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__* tmpfile_name; int opts; scalar_t__ input_memory_size; int /*<<< orphan*/ * input_memory; int /*<<< orphan*/ * input_file; int /*<<< orphan*/  image; } ;
typedef  TYPE_1__ Image ;

/* Variables and functions */
 int KEEP_TMPFILES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 

__attribute__((used)) static void
FUNC5(Image *image)
{
   FUNC2(image);
   FUNC3(&image->image);

   if (image->input_file != NULL)
   {
      FUNC0(image->input_file);
      image->input_file = NULL;
   }

   if (image->input_memory != NULL)
   {
      FUNC1(image->input_memory);
      image->input_memory = NULL;
      image->input_memory_size = 0;
   }

   if (image->tmpfile_name[0] != 0 && (image->opts & KEEP_TMPFILES) == 0)
   {
      (void)FUNC4(image->tmpfile_name);
      image->tmpfile_name[0] = 0;
   }
}