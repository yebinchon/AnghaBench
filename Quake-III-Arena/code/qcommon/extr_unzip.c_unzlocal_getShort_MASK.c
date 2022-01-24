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
typedef  int /*<<< orphan*/  v ;
typedef  int /*<<< orphan*/  uLong ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (short) ; 
 int UNZ_OK ; 
 int /*<<< orphan*/  FUNC1 (short*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2 (FILE* fin, uLong *pX)
{
	short	v;

	FUNC1( &v, sizeof(v), 1, fin );

	*pX = FUNC0( v);
	return UNZ_OK;

/*
    uLong x ;
    int i;
    int err;

    err = unzlocal_getByte(fin,&i);
    x = (uLong)i;
    
    if (err==UNZ_OK)
        err = unzlocal_getByte(fin,&i);
    x += ((uLong)i)<<8;
   
    if (err==UNZ_OK)
        *pX = x;
    else
        *pX = 0;
    return err;
*/
}