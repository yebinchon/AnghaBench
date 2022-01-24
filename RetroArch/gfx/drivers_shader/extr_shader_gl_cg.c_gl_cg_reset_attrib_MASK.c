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
struct TYPE_2__ {unsigned int attribs_index; int /*<<< orphan*/ * attribs_elems; } ;
typedef  TYPE_1__ cg_shader_data_t ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(void *data)
{
   unsigned i;
   cg_shader_data_t *cg = (cg_shader_data_t*)data;

   /* Add sanity check that we did not overflow. */
   FUNC2(cg->attribs_index <= FUNC0(cg->attribs_elems));

   for (i = 0; i < cg->attribs_index; i++)
      FUNC1(cg->attribs_elems[i]);
   cg->attribs_index = 0;
}