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
typedef  scalar_t__ zone_t ;
typedef  int vm_size_t ;
struct pipe_garbage {int dummy; } ;
struct pipe {int dummy; } ;

/* Variables and functions */
 int PIPE_GARBAGE_QUEUE_LIMIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ nbigpipe ; 
 int /*<<< orphan*/  pipe_garbage_lock ; 
 scalar_t__ pipe_garbage_zone ; 
 int /*<<< orphan*/  pipe_mtx_attr ; 
 int /*<<< orphan*/  pipe_mtx_grp ; 
 int /*<<< orphan*/  pipe_mtx_grp_attr ; 
 scalar_t__ pipe_zone ; 
 scalar_t__ FUNC4 (int,int,int,char*) ; 

void
FUNC5(void)
{
	nbigpipe=0;
	vm_size_t zone_size;
 
	zone_size = 8192 * sizeof(struct pipe);
        pipe_zone = FUNC4(sizeof(struct pipe), zone_size, 4096, "pipe zone");


	/* allocate lock group attribute and group for pipe mutexes */
	pipe_mtx_grp_attr = FUNC2();
	pipe_mtx_grp = FUNC1("pipe", pipe_mtx_grp_attr);

	/* allocate the lock attribute for pipe mutexes */
	pipe_mtx_attr = FUNC0();

	/*
	 * Set up garbage collection for dead pipes
	 */
	zone_size = (PIPE_GARBAGE_QUEUE_LIMIT + 20) *
	    sizeof(struct pipe_garbage);
        pipe_garbage_zone = (zone_t)FUNC4(sizeof(struct pipe_garbage),
	    zone_size, 4096, "pipe garbage zone");
	pipe_garbage_lock = FUNC3(pipe_mtx_grp, pipe_mtx_attr);
	
}