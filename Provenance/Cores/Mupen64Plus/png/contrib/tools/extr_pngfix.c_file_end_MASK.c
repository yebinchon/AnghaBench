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
struct file {int status_code; TYPE_1__* global; int /*<<< orphan*/  out_name; int /*<<< orphan*/ * out; int /*<<< orphan*/ * file; int /*<<< orphan*/ * chunk; int /*<<< orphan*/ * idat; } ;
struct TYPE_2__ {int status_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  READ_ERROR_CODE ; 
 int WRITE_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct file *file)
{
   int rc;

   /* If either of the chunk pointers are set end them here, the IDAT structure
    * must be deallocated first as it may deallocate the chunk structure.
    */
   if (file->idat != NULL)
      FUNC1(&file->idat);

   if (file->chunk != NULL)
      FUNC2(&file->chunk);

   rc = file->status_code;

   if (file->file != NULL)
      (void)FUNC4(file->file);

   if (file->out != NULL)
   {
      /* NOTE: this is bitwise |, all the following functions must execute and
       * must succeed.
       */
      if (FUNC5(file->out) | FUNC6(file->out) | FUNC4(file->out))
      {
         FUNC7(file->out_name);
         FUNC3(file, READ_ERROR_CODE, "output write error");
         rc |= WRITE_ERROR;
      }
   }

   /* Accumulate the result codes */
   file->global->status_code |= rc;

   FUNC0(*file);

   return rc; /* status code: non-zero on read or write error */
}