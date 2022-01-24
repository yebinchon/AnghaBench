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
struct file {int /*<<< orphan*/  file_name; int /*<<< orphan*/  file; } ;
typedef  int /*<<< orphan*/  fpos_t ;

/* Variables and functions */
 int /*<<< orphan*/  READ_ERROR_CODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC3(struct file *file, const fpos_t *pos)
{
   if (FUNC0(file->file, pos))
   {
      FUNC1(file->file_name);
      FUNC2(file, READ_ERROR_CODE, "fsetpos");
   }
}