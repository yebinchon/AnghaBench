
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 scalar_t__ g_fail_on_error ;
 int printf (char*,char const*) ;
 int stderr ;

__attribute__((used)) static void error_callback(void *userdata, const char *error)
{
 (void)userdata;
 if (g_fail_on_error)
 {
  fprintf(stderr, "Error: %s\n", error);
  exit(1);
 }
 else
  printf("Expected error hit: %s.\n", error);
}
