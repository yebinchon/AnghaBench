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
struct file {TYPE_1__* global; } ;
struct TYPE_2__ {scalar_t__ errors; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file*,int,char const*) ; 

__attribute__((used)) static void
FUNC1(struct file *file, int code, const char *what)
   /* Like emit_error but checks the global 'errors' flag */
{
   if (file->global->errors)
      FUNC0(file, code, what);
}