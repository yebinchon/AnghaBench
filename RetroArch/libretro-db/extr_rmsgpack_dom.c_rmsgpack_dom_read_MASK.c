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
struct rmsgpack_dom_value {int dummy; } ;
struct dom_reader_state {struct rmsgpack_dom_value** stack; scalar_t__ i; } ;
typedef  int /*<<< orphan*/  RFILE ;

/* Variables and functions */
 int /*<<< orphan*/  dom_reader_callbacks ; 
 int /*<<< orphan*/  FUNC0 (struct rmsgpack_dom_value*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct dom_reader_state*) ; 

int FUNC2(RFILE *fd, struct rmsgpack_dom_value *out)
{
   struct dom_reader_state s;
   int rv = 0;

   s.i        = 0;
   s.stack[0] = out;

   rv = FUNC1(fd, &dom_reader_callbacks, &s);

   if (rv < 0)
      FUNC0(out);

   return rv;
}