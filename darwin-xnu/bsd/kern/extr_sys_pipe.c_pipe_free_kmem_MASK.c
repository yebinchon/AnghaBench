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
struct TYPE_2__ {int size; int /*<<< orphan*/ * buffer; } ;
struct pipe {TYPE_1__ pipe_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  amountpipekva ; 
 int /*<<< orphan*/  amountpipes ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 

__attribute__((used)) static void
FUNC2(struct pipe *cpipe)
{
	if (cpipe->pipe_buffer.buffer != NULL) {
		FUNC0(-(cpipe->pipe_buffer.size), &amountpipekva);
		FUNC0(-1, &amountpipes);
		FUNC1((void *)cpipe->pipe_buffer.buffer,
			  cpipe->pipe_buffer.size);
		cpipe->pipe_buffer.buffer = NULL;
		cpipe->pipe_buffer.size = 0;
	}
}