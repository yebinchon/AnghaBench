#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  chassis_options_t ;
struct TYPE_3__ {int /*<<< orphan*/  max_conn_for_a_backend; int /*<<< orphan*/  wait_timeout; int /*<<< orphan*/  instance_name; int /*<<< orphan*/  lua_cpath; int /*<<< orphan*/  lua_path; int /*<<< orphan*/  event_thread_count; int /*<<< orphan*/  max_files_number; int /*<<< orphan*/  auto_restart; int /*<<< orphan*/  invoke_dbg_on_crash; int /*<<< orphan*/  use_syslog; int /*<<< orphan*/  log_path; int /*<<< orphan*/  log_level; int /*<<< orphan*/  plugin_names; int /*<<< orphan*/  plugin_dir; int /*<<< orphan*/  base_dir; int /*<<< orphan*/  user; int /*<<< orphan*/  daemon_mode; int /*<<< orphan*/  verbose_shutdown; } ;
typedef  TYPE_1__ chassis_frontend_t ;

/* Variables and functions */
 int /*<<< orphan*/  G_OPTION_ARG_INT ; 
 int /*<<< orphan*/  G_OPTION_ARG_NONE ; 
 int /*<<< orphan*/  G_OPTION_ARG_STRING ; 
 int /*<<< orphan*/  G_OPTION_ARG_STRING_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 

int FUNC1(chassis_frontend_t *frontend, chassis_options_t *opts) {
	FUNC0(opts, "verbose-shutdown", 0, 0, G_OPTION_ARG_NONE, &(frontend->verbose_shutdown), "Always log the exit code when shutting down", NULL);
	FUNC0(opts, "daemon", 0, 0, G_OPTION_ARG_NONE, &(frontend->daemon_mode), "Start in daemon-mode", NULL);
	FUNC0(opts, "user", 0, 0, G_OPTION_ARG_STRING, &(frontend->user), "Run mysql-proxy as user", "<user>");
	FUNC0(opts, "basedir", 0, 0, G_OPTION_ARG_STRING, &(frontend->base_dir), "Base directory to prepend to relative paths in the config", "<absolute path>");
	FUNC0(opts, "plugin-dir", 0, 0, G_OPTION_ARG_STRING, &(frontend->plugin_dir), "path to the plugins", "<path>");
	FUNC0(opts, "plugins", 0, 0, G_OPTION_ARG_STRING_ARRAY, &(frontend->plugin_names), "plugins to load", "<name>");
	FUNC0(opts, "log-level", 0, 0, G_OPTION_ARG_STRING, &(frontend->log_level), "log all messages of level ... or higher", "(error|warning|info|message|debug)");
	FUNC0(opts, "log-path", 0, 0, G_OPTION_ARG_STRING, &(frontend->log_path), "log all messages in a path", "<path>");
	FUNC0(opts, "log-use-syslog", 0, 0, G_OPTION_ARG_NONE, &(frontend->use_syslog), "log all messages to syslog", NULL);
	FUNC0(opts, "log-backtrace-on-crash", 0, 0, G_OPTION_ARG_NONE, &(frontend->invoke_dbg_on_crash), "try to invoke debugger on crash", NULL);
	FUNC0(opts, "keepalive", 0, 0, G_OPTION_ARG_NONE, &(frontend->auto_restart), "try to restart the proxy if it crashed", NULL);
	FUNC0(opts, "max-open-files", 0, 0, G_OPTION_ARG_INT, &(frontend->max_files_number), "maximum number of open files (ulimit -n)", NULL);
	FUNC0(opts, "event-threads", 0, 0, G_OPTION_ARG_INT, &(frontend->event_thread_count), "number of event-handling threads (default: 1)", NULL);
	FUNC0(opts, "lua-path", 0, 0, G_OPTION_ARG_STRING, &(frontend->lua_path), "set the LUA_PATH", "<...>");
	FUNC0(opts, "lua-cpath", 0, 0, G_OPTION_ARG_STRING, &(frontend->lua_cpath), "set the LUA_CPATH", "<...>");
	FUNC0(opts, "instance", 0, 0, G_OPTION_ARG_STRING, &(frontend->instance_name), "instance name", "<name>");
	FUNC0(opts, "wait-timeout", 0, 0, G_OPTION_ARG_INT, &(frontend->wait_timeout), "the number of seconds which Atlas waits for activity on a connection before closing it (default:0)", NULL);
	FUNC0(opts, "max_conn_for_a_backend", 0, 0, G_OPTION_ARG_INT, &(frontend->max_conn_for_a_backend), "max conn for a backend(default: 0)", NULL);
    
	return 0;	
}