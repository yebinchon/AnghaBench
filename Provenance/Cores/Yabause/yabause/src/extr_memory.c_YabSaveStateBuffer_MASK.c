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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (void*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (size_t) ; 
 int /*<<< orphan*/ * FUNC6 () ; 

int FUNC7(void ** buffer, size_t * size)
{
   FILE * fp;
   int status;
   size_t num_read = 0;

   if (buffer != NULL) *buffer = NULL;
   *size = 0;

   fp = FUNC6();

   status = FUNC0(fp);
   if (status != 0)
   {
      FUNC1(fp);
      return status;
   }

   FUNC3(fp, 0, SEEK_END);
   *size = FUNC4(fp);
   FUNC3(fp, 0, SEEK_SET);

   if (buffer != NULL)
   {
      *buffer = FUNC5(*size);
      num_read = FUNC2(*buffer, 1, *size, fp);
   }

   FUNC1(fp);
   return 0;
}