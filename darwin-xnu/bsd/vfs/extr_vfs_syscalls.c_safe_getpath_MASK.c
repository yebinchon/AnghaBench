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
struct vnode {char* v_name; TYPE_2__* v_mount; struct vnode* v_parent; } ;
struct TYPE_3__ {char* f_mntonname; } ;
struct TYPE_4__ {TYPE_1__ mnt_vfsstat; } ;

/* Variables and functions */
 int ENOSPC ; 
 int MAXPATHLEN ; 
 char* FUNC0 (char*,char) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct vnode*,char*,int) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (struct vnode*,char*,int*) ; 

int
FUNC5(struct vnode *dvp, char *leafname, char *path, int _len, int *truncated_path)
{
	int ret, len = _len;

	*truncated_path = 0;
	ret = FUNC4(dvp, path, &len);
	if (ret == 0 && len < (MAXPATHLEN - 1)) {
		if (leafname) {
			path[len-1] = '/';
			len += FUNC2(&path[len], leafname, MAXPATHLEN-len) + 1;
			if (len > MAXPATHLEN) {
				char *ptr;

				// the string got truncated!
				*truncated_path = 1;
				ptr = FUNC0(path, '/');
				if (ptr) {
					*ptr = '\0';   // chop off the string at the last directory component
				}
				len = FUNC3(path) + 1;
			}
		}
	} else if (ret == 0) {
		*truncated_path = 1;
	} else if (ret != 0) {
		struct vnode *mydvp=dvp;

		if (ret != ENOSPC) {
			FUNC1("safe_getpath: failed to get the path for vp %p (%s) : err %d\n",
			       dvp, dvp->v_name ? dvp->v_name : "no-name", ret);
		}
		*truncated_path = 1;

		do {
			if (mydvp->v_parent != NULL) {
				mydvp = mydvp->v_parent;
			} else if (mydvp->v_mount) {
				FUNC2(path, mydvp->v_mount->mnt_vfsstat.f_mntonname, _len);
				break;
			} else {
				// no parent and no mount point?  only thing is to punt and say "/" changed
				FUNC2(path, "/", _len);
				len = 2;
				mydvp = NULL;
			}

			if (mydvp == NULL) {
				break;
			}

			len = _len;
			ret = FUNC4(mydvp, path, &len);
		} while (ret == ENOSPC);
	}

	return len;
}