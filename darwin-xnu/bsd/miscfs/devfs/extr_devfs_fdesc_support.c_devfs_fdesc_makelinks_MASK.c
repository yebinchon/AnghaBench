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
typedef  int /*<<< orphan*/  devnode_t ;
typedef  int /*<<< orphan*/  devdirent_t ;
struct TYPE_2__ {int /*<<< orphan*/ * de_dnp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* dev_root ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

int
FUNC3()
{
	int error = 0;
	devdirent_t *stdin_ent = NULL, *stdout_ent = NULL, *stderr_ent = NULL;
	devnode_t *root_devnode = dev_root->de_dnp;

	/* We do this ugliness to get around some "const" warnings */
	char in[] = "stdin";
	char out[] = "stdout";
	char err[] = "stderr";
	char zero[] = "fd/0";
	char one[] = "fd/1";
	char two[] = "fd/2";

	if ((error = FUNC1(root_devnode, in, 0555, zero, &stdin_ent))) {
		FUNC2("Couldn't make stdin, err %d.\n", error);
		goto bad;
	}

	if ((error = FUNC1(root_devnode, out, 0555, one, &stdout_ent))) {
		FUNC2("Couldn't make stdout, err %d.\n", error);
		goto bad;
	}

	if ((error = FUNC1(root_devnode, err, 0555, two, &stderr_ent))) {
		FUNC2("Couldn't make stderr, err %d.\n", error);
		goto bad;
	}
	
	return 0;

bad:
	if (stdin_ent) {
		FUNC0(stdin_ent);
	}
	if (stdout_ent) {
		FUNC0(stdout_ent);
	}
	if (stderr_ent) {
		FUNC0(stderr_ent);
	}

	return error;
}