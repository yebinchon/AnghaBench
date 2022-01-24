#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct necp_fd_data {scalar_t__ necp_fd_type; } ;
struct fileproc {TYPE_2__* f_fglob; } ;
typedef  int /*<<< orphan*/  proc_t ;
struct TYPE_4__ {scalar_t__ fg_data; TYPE_1__* fg_ops; } ;
struct TYPE_3__ {scalar_t__ fo_type; } ;

/* Variables and functions */
 scalar_t__ DTYPE_NETPOLICY ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct fileproc*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,struct fileproc**,int) ; 
 scalar_t__ necp_fd_type_client ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(int fd, struct necp_fd_data **fd_data)
{
	proc_t p = FUNC0();
	struct fileproc *fp = NULL;
	int error = 0;

	FUNC3(p);
	if ((error = FUNC2(p, fd, &fp, 1)) != 0) {
		goto done;
	}
	if (fp->f_fglob->fg_ops->fo_type != DTYPE_NETPOLICY) {
		FUNC1(p, fd, fp, 1);
		error = ENODEV;
		goto done;
	}
	*fd_data = (struct necp_fd_data *)fp->f_fglob->fg_data;

	if ((*fd_data)->necp_fd_type != necp_fd_type_client) {
		// Not a client fd, ignore
		error = EINVAL;
		goto done;
	}

done:
	FUNC4(p);
	return (error);
}