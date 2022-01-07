
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int T_PASS (char*,char*) ;
 int multithreaded_bind_test (int,int) ;

__attribute__((used)) static void
run_multithreaded_bind_test(int number_of_runs, bool v6, int socket_count)
{
 for (int i = 0; i < number_of_runs; i++) {
  multithreaded_bind_test(v6, socket_count);
 }
 T_PASS("multithreaded_bind_test %s", v6 ? "IPv6" : "IPv4");
}
