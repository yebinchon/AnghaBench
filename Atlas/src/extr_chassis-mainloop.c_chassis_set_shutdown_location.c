
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char gchar ;


 int g_message (char*,char const*) ;
 int signal_shutdown ;

void chassis_set_shutdown_location(const gchar* location) {
 if (signal_shutdown == 0) g_message("Initiating shutdown, requested from %s", (location != ((void*)0) ? location : "signal handler"));
 signal_shutdown = 1;
}
