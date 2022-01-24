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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*,int,char const*) ; 

__attribute__((used)) static void FUNC2(void *ctx, int level,
                      const char *file, int line,
                      const char *str)
{
   ((void) level);

   FUNC1((FILE*)ctx, "%s:%04d: %s", file, line, str);
   FUNC0((FILE*)ctx);
}