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
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void const*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 

int FUNC5(const void * buffer, size_t size)
{
   FILE * fp;
   int status;

   fp = FUNC4();
   FUNC3(buffer, 1, size, fp);

   FUNC2(fp, 0, SEEK_SET);

   status = FUNC0(fp);
   FUNC1(fp);

   return status;
}