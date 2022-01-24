#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int64_t ;
struct TYPE_9__ {size_t mca_contents_size; struct TYPE_9__* mca_next; struct TYPE_9__* mca_contents; } ;
typedef  TYPE_1__ mcl_saved_contents_t ;
struct TYPE_10__ {struct TYPE_10__* obj_next; } ;
typedef  TYPE_2__ mcache_obj_t ;
typedef  TYPE_1__ mcache_audit_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_11__ {TYPE_1__** cl_audit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 unsigned int FUNC2 (void*) ; 
 unsigned int NMBPG ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 unsigned int maxclaudit ; 
 TYPE_4__* mclaudit ; 

__attribute__((used)) static void
FUNC5(void *buf, mcache_audit_t **mca_list,
    mcache_obj_t **con_list, size_t con_size, unsigned int num)
{
	mcache_audit_t *mca, *mca_tail;
	mcache_obj_t *con = NULL;
	boolean_t save_contents = (con_list != NULL);
	unsigned int i, ix;

	FUNC0(num <= NMBPG);
	FUNC0(con_list == NULL || con_size != 0);

	ix = FUNC2(buf);
	FUNC3(ix < maxclaudit);

	/* Make sure we haven't been here before */
	for (i = 0; i < num; i++)
		FUNC3(mclaudit[ix].cl_audit[i] == NULL);

	mca = mca_tail = *mca_list;
	if (save_contents)
		con = *con_list;

	for (i = 0; i < num; i++) {
		mcache_audit_t *next;

		next = mca->mca_next;
		FUNC4(mca, sizeof (*mca));
		mca->mca_next = next;
		mclaudit[ix].cl_audit[i] = mca;

		/* Attach the contents buffer if requested */
		if (save_contents) {
			mcl_saved_contents_t *msc =
			    (mcl_saved_contents_t *)(void *)con;

			FUNC3(msc != NULL);
			FUNC3(FUNC1(msc, sizeof (u_int64_t)));
			FUNC3(con_size == sizeof (*msc));
			mca->mca_contents_size = con_size;
			mca->mca_contents = msc;
			con = con->obj_next;
			FUNC4(mca->mca_contents, mca->mca_contents_size);
		}

		mca_tail = mca;
		mca = mca->mca_next;
	}

	if (save_contents)
		*con_list = con;

	*mca_list = mca_tail->mca_next;
	mca_tail->mca_next = NULL;
}