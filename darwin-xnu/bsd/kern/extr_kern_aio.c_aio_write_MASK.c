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
struct aio_write_args {scalar_t__ aiocbp; } ;
typedef  scalar_t__ proc_t ;

/* Variables and functions */
 int /*<<< orphan*/  AIO_WRITE ; 
 int /*<<< orphan*/  AIO_write ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DBG_BSD_AIO ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

int
FUNC3(proc_t p, struct aio_write_args *uap, int *retval )
{
	int			error;
	
	*retval = 0;
	
	FUNC1( (FUNC0(DBG_BSD_AIO, AIO_write)) | DBG_FUNC_START,
		     	  (int)p, (int)uap->aiocbp, 0, 0, 0 );

	error = FUNC2( p, uap->aiocbp, AIO_WRITE );
	if ( error != 0 )
		*retval = -1;

	FUNC1( (FUNC0(DBG_BSD_AIO, AIO_write)) | DBG_FUNC_END,
		     	  (int)p, (int)uap->aiocbp, error, 0, 0 );
		
	return( error );

}