
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const* qos_class_t ;


 int ENV_VAR_QOS ;
 int T_ASSERT_POSIX_SUCCESS (int ,int *) ;
 int T_QUIET ;
 int asprintf (char**,char*,int ,char const*) ;
 int * qos_env ;
 int * qos_name_env ;
 int wl_function_name ;

__attribute__((used)) static void
env_set_qos(char **env, qos_class_t qos[], const char *qos_name[], const char *wl_function)
{
 int i;
 char *qos_str, *qos_name_str;
 for (i = 0; i < ENV_VAR_QOS; i++) {
  T_QUIET; T_ASSERT_POSIX_SUCCESS(asprintf(&qos_str, "%s=%d", qos_env[i] , qos[i]),
   ((void*)0));
  T_QUIET; T_ASSERT_POSIX_SUCCESS(
   asprintf(&qos_name_str, "%s=%s", qos_name_env[i], qos_name[i]), ((void*)0));
  env[2 * i] = qos_str;
  env[2 * i + 1] = qos_name_str;
 }
 T_QUIET; T_ASSERT_POSIX_SUCCESS(asprintf(&env[2 * i], "%s=%s", wl_function_name, wl_function),
   ((void*)0));
 env[2 * i + 1] = ((void*)0);
}
