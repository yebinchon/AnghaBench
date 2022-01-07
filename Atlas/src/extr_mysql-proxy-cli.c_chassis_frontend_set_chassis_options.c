
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int chassis_options_t ;
struct TYPE_3__ {int max_conn_for_a_backend; int wait_timeout; int instance_name; int lua_cpath; int lua_path; int event_thread_count; int max_files_number; int auto_restart; int invoke_dbg_on_crash; int use_syslog; int log_path; int log_level; int plugin_names; int plugin_dir; int base_dir; int user; int daemon_mode; int verbose_shutdown; } ;
typedef TYPE_1__ chassis_frontend_t ;


 int G_OPTION_ARG_INT ;
 int G_OPTION_ARG_NONE ;
 int G_OPTION_ARG_STRING ;
 int G_OPTION_ARG_STRING_ARRAY ;
 int chassis_options_add (int *,char*,int ,int ,int ,int *,char*,char*) ;

int chassis_frontend_set_chassis_options(chassis_frontend_t *frontend, chassis_options_t *opts) {
 chassis_options_add(opts, "verbose-shutdown", 0, 0, G_OPTION_ARG_NONE, &(frontend->verbose_shutdown), "Always log the exit code when shutting down", ((void*)0));
 chassis_options_add(opts, "daemon", 0, 0, G_OPTION_ARG_NONE, &(frontend->daemon_mode), "Start in daemon-mode", ((void*)0));
 chassis_options_add(opts, "user", 0, 0, G_OPTION_ARG_STRING, &(frontend->user), "Run mysql-proxy as user", "<user>");
 chassis_options_add(opts, "basedir", 0, 0, G_OPTION_ARG_STRING, &(frontend->base_dir), "Base directory to prepend to relative paths in the config", "<absolute path>");
 chassis_options_add(opts, "plugin-dir", 0, 0, G_OPTION_ARG_STRING, &(frontend->plugin_dir), "path to the plugins", "<path>");
 chassis_options_add(opts, "plugins", 0, 0, G_OPTION_ARG_STRING_ARRAY, &(frontend->plugin_names), "plugins to load", "<name>");
 chassis_options_add(opts, "log-level", 0, 0, G_OPTION_ARG_STRING, &(frontend->log_level), "log all messages of level ... or higher", "(error|warning|info|message|debug)");
 chassis_options_add(opts, "log-path", 0, 0, G_OPTION_ARG_STRING, &(frontend->log_path), "log all messages in a path", "<path>");
 chassis_options_add(opts, "log-use-syslog", 0, 0, G_OPTION_ARG_NONE, &(frontend->use_syslog), "log all messages to syslog", ((void*)0));
 chassis_options_add(opts, "log-backtrace-on-crash", 0, 0, G_OPTION_ARG_NONE, &(frontend->invoke_dbg_on_crash), "try to invoke debugger on crash", ((void*)0));
 chassis_options_add(opts, "keepalive", 0, 0, G_OPTION_ARG_NONE, &(frontend->auto_restart), "try to restart the proxy if it crashed", ((void*)0));
 chassis_options_add(opts, "max-open-files", 0, 0, G_OPTION_ARG_INT, &(frontend->max_files_number), "maximum number of open files (ulimit -n)", ((void*)0));
 chassis_options_add(opts, "event-threads", 0, 0, G_OPTION_ARG_INT, &(frontend->event_thread_count), "number of event-handling threads (default: 1)", ((void*)0));
 chassis_options_add(opts, "lua-path", 0, 0, G_OPTION_ARG_STRING, &(frontend->lua_path), "set the LUA_PATH", "<...>");
 chassis_options_add(opts, "lua-cpath", 0, 0, G_OPTION_ARG_STRING, &(frontend->lua_cpath), "set the LUA_CPATH", "<...>");
 chassis_options_add(opts, "instance", 0, 0, G_OPTION_ARG_STRING, &(frontend->instance_name), "instance name", "<name>");
 chassis_options_add(opts, "wait-timeout", 0, 0, G_OPTION_ARG_INT, &(frontend->wait_timeout), "the number of seconds which Atlas waits for activity on a connection before closing it (default:0)", ((void*)0));
 chassis_options_add(opts, "max_conn_for_a_backend", 0, 0, G_OPTION_ARG_INT, &(frontend->max_conn_for_a_backend), "max conn for a backend(default: 0)", ((void*)0));

 return 0;
}
