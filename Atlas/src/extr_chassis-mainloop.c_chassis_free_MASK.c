#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t guint ;
struct TYPE_9__ {int /*<<< orphan*/  config; int /*<<< orphan*/  (* destroy ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ chassis_plugin ;
struct TYPE_10__ {int /*<<< orphan*/  backends; int /*<<< orphan*/  sc; int /*<<< orphan*/  shutdown_hooks; struct TYPE_10__* event_hdr_version; scalar_t__ event_base; struct TYPE_10__* instance_name; TYPE_3__* threads; scalar_t__ stats; struct TYPE_10__* user; struct TYPE_10__* log_path; struct TYPE_10__* base_dir; TYPE_3__* modules; } ;
typedef  TYPE_2__ chassis ;
struct TYPE_11__ {size_t len; TYPE_1__** pdata; } ;
typedef  TYPE_3__ GPtrArray ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 char* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

void FUNC15(chassis *chas) {
	guint i;
#ifdef HAVE_EVENT_BASE_FREE
	const char *version;
#endif

	if (!chas) return;

	/* call the destructor for all plugins */
	for (i = 0; i < chas->modules->len; i++) {
		chassis_plugin *p = chas->modules->pdata[i];

		FUNC8(p->destroy);
		p->destroy(p->config);
	}
	
	FUNC2(chas->shutdown_hooks); /* cleanup the global 3rd party stuff before we unload the modules */

	for (i = 0; i < chas->modules->len; i++) {
		chassis_plugin *p = chas->modules->pdata[i];

		FUNC1(p);
	}
	
	FUNC10(chas->modules, TRUE);

	if (chas->base_dir) FUNC9(chas->base_dir);
	if (chas->log_path) FUNC9(chas->log_path);
	if (chas->user) FUNC9(chas->user);
	
	if (chas->stats) FUNC4(chas->stats);

	FUNC5(NULL);

	GPtrArray *threads = chas->threads;
	if (threads) {
		for (i = 0; i < threads->len; ++i) {
			FUNC0(threads->pdata[i]);
		}

		FUNC10(threads, TRUE);
	}

	if (chas->instance_name) FUNC9(chas->instance_name);

#ifdef HAVE_EVENT_BASE_FREE
	/* only recent versions have this call */

	version = event_get_version();

	/* libevent < 1.3e doesn't cleanup its own fds from the event-queue in signal_init()
	 * calling event_base_free() would cause a assert() on shutdown
	 */
	if (version && (strcmp(version, "1.3e") >= 0)) {
		if (chas->event_base) event_base_free(chas->event_base);
	}
#endif
	FUNC9(chas->event_hdr_version);

	FUNC3(chas->shutdown_hooks);

	FUNC11(chas->sc);

	FUNC12(chas->backends);

	FUNC9(chas);
}