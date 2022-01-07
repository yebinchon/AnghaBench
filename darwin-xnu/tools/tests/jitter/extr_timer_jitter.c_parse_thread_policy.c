
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int my_policy_type_t ;


 int MY_POLICY_FIXEDPRI ;
 int MY_POLICY_REALTIME ;
 int MY_POLICY_TIMESHARE ;
 int exit (int) ;
 int printf (char*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

my_policy_type_t
parse_thread_policy(const char *str)
{
 if (strcmp(str, "timeshare") == 0) {
  return MY_POLICY_TIMESHARE;
 } else if (strcmp(str, "realtime") == 0) {
  return MY_POLICY_REALTIME;
 } else if (strcmp(str, "fixed") == 0) {
  return MY_POLICY_FIXEDPRI;
 } else {
  printf("Invalid thread policy %s\n", str);
  exit(1);
 }
}
