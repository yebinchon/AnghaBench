#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  backends_mutex; TYPE_7__* backends; int /*<<< orphan*/  event_thread_count; } ;
typedef  TYPE_1__ network_backends_t ;
struct TYPE_10__ {scalar_t__ type; size_t weight; TYPE_6__* addr; } ;
typedef  TYPE_2__ network_backend_t ;
typedef  size_t guint ;
typedef  int gint ;
typedef  char gchar ;
typedef  scalar_t__ backend_type_t ;
struct TYPE_12__ {size_t len; TYPE_2__** pdata; } ;
struct TYPE_11__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ BACKEND_TYPE_RO ; 
 scalar_t__ BACKEND_TYPE_RW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC11 (char*,char) ; 

int FUNC12(network_backends_t *bs, /* const */ gchar *address, backend_type_t type) {
	network_backend_t *new_backend;
	guint i;

	new_backend = FUNC9(bs->event_thread_count);
	new_backend->type = type;

	gchar *p = NULL;
	if (type == BACKEND_TYPE_RO) {
		guint weight = 1;
		p = FUNC11(address, '@');
		if (p != NULL) {
			*p = '\0';
			weight = FUNC1(p+1);
		}
		new_backend->weight = weight;
	}

	if (0 != FUNC7(new_backend->addr, address)) {
		FUNC8(new_backend);
		return -1;
	}

	/* check if this backend is already known */
	FUNC4(bs->backends_mutex);	/*remove lock*/
	gint first_slave = -1;
	for (i = 0; i < bs->backends->len; i++) {
		network_backend_t *old_backend = bs->backends->pdata[i];

		if (first_slave == -1 && old_backend->type == BACKEND_TYPE_RO) first_slave = i;

		if (old_backend->type == type && FUNC10(FUNC0(old_backend->addr->name), FUNC0(new_backend->addr->name))) {
			FUNC8(new_backend);

			FUNC5(bs->backends_mutex);	/*remove lock*/
			FUNC2("backend %s is already known!", address);
			return -1;
		}
	}

	FUNC6(bs->backends, new_backend);
	if (first_slave != -1 && type == BACKEND_TYPE_RW) {
		network_backend_t *temp_backend = bs->backends->pdata[first_slave];
		bs->backends->pdata[first_slave] = bs->backends->pdata[bs->backends->len - 1];
		bs->backends->pdata[bs->backends->len - 1] = temp_backend;
	}
	FUNC5(bs->backends_mutex);	/*remove lock*/

	FUNC3("added %s backend: %s", (type == BACKEND_TYPE_RW) ? "read/write" : "read-only", address);

	if (p != NULL) *p = '@';

	return 0;
}