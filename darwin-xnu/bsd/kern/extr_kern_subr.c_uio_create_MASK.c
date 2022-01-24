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
typedef  TYPE_1__* uio_t ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_4__ {int /*<<< orphan*/  uio_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  UIO_FLAGS_WE_ALLOCED ; 
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (size_t) ; 
 TYPE_1__* FUNC3 (int,int /*<<< orphan*/ ,int,int,void*,size_t) ; 
 int /*<<< orphan*/  uio_t_count ; 

uio_t FUNC4( int a_iovcount,		/* number of iovecs */
				  off_t a_offset,		/* current offset */
				  int a_spacetype,		/* type of address space */
				  int a_iodirection )	/* read or write flag */
{
	void *				my_buf_p;
	size_t				my_size;
	uio_t				my_uio;
	
	my_size = FUNC0(a_iovcount);
	my_buf_p = FUNC2(my_size);
	my_uio = FUNC3( a_iovcount, 
									 a_offset,
									 a_spacetype,
									 a_iodirection,
									 my_buf_p,
									 my_size );
	if (my_uio != 0) {
		/* leave a note that we allocated this uio_t */
		my_uio->uio_flags |= UIO_FLAGS_WE_ALLOCED;
#if DEBUG
		(void)hw_atomic_add(&uio_t_count, 1);
#endif
	}
	
	return( my_uio );
}