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
typedef  int /*<<< orphan*/  errno_t ;
typedef  int /*<<< orphan*/  buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  buf_mtxp ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

errno_t
FUNC3(buf_t bp, int flags, int slpflag, int slptimeo) {
        errno_t error;

        FUNC1(buf_mtxp);

	error = FUNC0(bp, flags, slpflag, slptimeo);

       	FUNC2(buf_mtxp);

	return (error);
}