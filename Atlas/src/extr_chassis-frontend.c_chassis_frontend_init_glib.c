
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;


 int GLIB_CHECK_VERSION (int,int,int ) ;
 int GLIB_MAJOR_VERSION ;
 int GLIB_MICRO_VERSION ;
 int GLIB_MINOR_VERSION ;
 int g_critical (char*,...) ;
 int g_mem_set_vtable (int ) ;
 int g_module_supported () ;
 int g_thread_init (int *) ;
 int * glib_check_version (int ,int ,int ) ;
 int glib_major_version ;
 int glib_mem_profiler_table ;
 int glib_micro_version ;
 int glib_minor_version ;

int chassis_frontend_init_glib() {
 const gchar *check_str = ((void*)0);




 if (!GLIB_CHECK_VERSION(2, 6, 0)) {
  g_critical("the glib header are too old, need at least 2.6.0, got: %d.%d.%d",
    GLIB_MAJOR_VERSION, GLIB_MINOR_VERSION, GLIB_MICRO_VERSION);

  return -1;
 }

 check_str = glib_check_version(GLIB_MAJOR_VERSION, GLIB_MINOR_VERSION, GLIB_MICRO_VERSION);

 if (check_str) {
  g_critical("%s, got: lib=%d.%d.%d, headers=%d.%d.%d",
   check_str,
   glib_major_version, glib_minor_version, glib_micro_version,
   GLIB_MAJOR_VERSION, GLIB_MINOR_VERSION, GLIB_MICRO_VERSION);

  return -1;
 }

 if (!g_module_supported()) {
  g_critical("loading modules is not supported on this platform");
  return -1;
 }

 g_thread_init(((void*)0));

 return 0;
}
