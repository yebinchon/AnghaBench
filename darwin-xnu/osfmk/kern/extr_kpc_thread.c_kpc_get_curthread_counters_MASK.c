#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_4__ {int /*<<< orphan*/  kpc_buf; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_1__* FUNC0 () ; 
 int kpc_thread_classes_count ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(uint32_t *inoutcount, uint64_t *buf)
{
	thread_t thread = FUNC0();
	boolean_t enabled;

	/* buffer too small :( */
	if( *inoutcount < kpc_thread_classes_count )
		return EINVAL;

	/* copy data and actual size */
	if( !thread->kpc_buf )
		return EINVAL;

	enabled = FUNC3(FALSE);

	/* snap latest version of counters for this thread */
	FUNC1( FUNC0() );
	
	/* copy out */
	FUNC2( buf, thread->kpc_buf, 
	        kpc_thread_classes_count * sizeof(*buf) );
	*inoutcount = kpc_thread_classes_count;

	FUNC3(enabled);

	return 0;
}