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
struct fileproc {int /*<<< orphan*/  f_flags; } ;
typedef  int /*<<< orphan*/  proc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FP_WAITEVENT ; 
 int FUNC0 (int /*<<< orphan*/ ,int,struct fileproc*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(proc_t p, int fd, struct fileproc *fp)
{
        int error;

	FUNC1(p);

	fp->f_flags |= FP_WAITEVENT;

	error = FUNC0(p, fd, fp, 1);

	FUNC2(p);

	return (error);
}