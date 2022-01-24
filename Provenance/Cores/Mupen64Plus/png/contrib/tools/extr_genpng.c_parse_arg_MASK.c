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
struct arg {void* y2; void* x2; void* y1; void* x1; int /*<<< orphan*/  width; void* check_fn; void* inside_fn; int /*<<< orphan*/  color; } ;

/* Variables and functions */
 int /*<<< orphan*/  FN_CHECK ; 
 int /*<<< orphan*/  FN_INSIDE ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 void* FUNC1 (char const*) ; 
 void* FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static void
FUNC4(struct arg *arg, const char **argv/*7 arguments*/)
{
   /* shape ::= color width shape x1 y1 x2 y2 */
   arg->color = FUNC0(argv[0]);
   arg->width = FUNC3(argv[1]);
   arg->inside_fn = FUNC2(argv[2], arg->width, FN_INSIDE);
   arg->check_fn = FUNC2(argv[2], arg->width, FN_CHECK);
   arg->x1 = FUNC1(argv[3]);
   arg->y1 = FUNC1(argv[4]);
   arg->x2 = FUNC1(argv[5]);
   arg->y2 = FUNC1(argv[6]);
}