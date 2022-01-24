#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gpointer ;
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_6__ {scalar_t__ magic; int /*<<< orphan*/  (* new_stats ) () ;int /*<<< orphan*/  stats; int /*<<< orphan*/  version; scalar_t__ name; int /*<<< orphan*/  (* init ) () ;int /*<<< orphan*/  config; int /*<<< orphan*/  module; } ;
typedef  TYPE_1__ chassis_plugin ;

/* Variables and functions */
 scalar_t__ CHASSIS_PLUGIN_MAGIC ; 
 int /*<<< orphan*/  G_MODULE_BIND_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/  const*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

chassis_plugin *FUNC9(const gchar *name) {
	int (*plugin_init)(chassis_plugin *p);
	chassis_plugin *p = FUNC1();

	p->module = FUNC4(name, G_MODULE_BIND_LOCAL);

	if (!p->module) {
		FUNC2("loading module '%s' failed: %s", name, FUNC3());

		FUNC0(p);

		return NULL;
	}

	/* each module has to have a plugin_init function */
	if (!FUNC5(p->module, "plugin_init", (gpointer) &plugin_init)) {
		FUNC2("module '%s' doesn't have a init-function: %s", name, FUNC3());
		FUNC0(p);
		return NULL;
	}

	if (0 != plugin_init(p)) {
		FUNC2("init-function for module '%s' failed", name);
		FUNC0(p);
		return NULL;
	}

	if (p->magic != CHASSIS_PLUGIN_MAGIC) {
		FUNC2("plugin '%s' doesn't match the current plugin interface (plugin is %lx, chassis is %lx)", name, p->magic, CHASSIS_PLUGIN_MAGIC);
		FUNC0(p);
		return NULL;
	}

	if (p->init) {
		p->config = p->init();
	}

	/* if the plugins haven't set p->name provide our own name */
	if (!p->name) p->name = FUNC6(name);
	/* set dummy version number if the plugin doesn't provide a real one */
	if (!p->version) {
		FUNC2("plugin '%s' doesn't set a version number, refusing to load this plugin", name);
		FUNC0(p);
		return NULL;
	}
	
	if (p->new_stats) {
		p->stats = p->new_stats();
	}

	return p;
}