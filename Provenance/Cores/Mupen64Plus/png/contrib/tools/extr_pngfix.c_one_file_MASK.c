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
struct global {scalar_t__ verbose; } ;
struct control {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct control*) ; 
 int FUNC1 (struct control*,struct global*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int FUNC3 (struct control*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC4(struct global *global, const char *file_name, const char *out_name)
{
   int rc;
   struct control control;

   if (global->verbose)
      FUNC2(stderr, "FILE %s -> %s\n", file_name,
         out_name ? out_name : "<none>");

   /* Although control_init can return a failure code the structure is always
    * initialized, so control_end can be used to accumulate any status codes.
    */
   rc = FUNC1(&control, global, file_name, out_name);

   if (rc == 0)
      rc = FUNC3(&control);

   rc |= FUNC0(&control);

   return rc;
}