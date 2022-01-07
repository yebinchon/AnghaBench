
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLogLevelFlags ;


 int G_LOG_DOMAIN ;
 int G_LOG_LEVEL_CRITICAL ;
 int G_LOG_LEVEL_DEBUG ;
 int G_LOG_LEVEL_MESSAGE ;
 int G_LOG_LEVEL_WARNING ;
 int _EVENT_LOG_DEBUG ;
 int _EVENT_LOG_ERR ;
 int _EVENT_LOG_MSG ;
 int _EVENT_LOG_WARN ;
 int g_log (int ,int ,char*,char const*) ;

__attribute__((used)) static void event_log_use_glib(int libevent_log_level, const char *msg) {


 GLogLevelFlags glib_log_level = G_LOG_LEVEL_DEBUG;

 if (libevent_log_level == _EVENT_LOG_DEBUG) glib_log_level = G_LOG_LEVEL_DEBUG;
 else if (libevent_log_level == _EVENT_LOG_MSG) glib_log_level = G_LOG_LEVEL_MESSAGE;
 else if (libevent_log_level == _EVENT_LOG_WARN) glib_log_level = G_LOG_LEVEL_WARNING;
 else if (libevent_log_level == _EVENT_LOG_ERR) glib_log_level = G_LOG_LEVEL_CRITICAL;


    if (libevent_log_level == _EVENT_LOG_ERR) {
        g_log(G_LOG_DOMAIN, glib_log_level, "(libevent) %s", msg);
    }
}
