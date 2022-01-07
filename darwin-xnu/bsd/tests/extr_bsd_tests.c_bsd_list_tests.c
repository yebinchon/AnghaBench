
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int bsd_post_tests ;
 int bsd_post_tests_count ;
 int delay (int) ;
 scalar_t__ kernel_post_args ;
 scalar_t__ last_loaded_timestamp ;
 int printf (char*,...) ;
 int xnupost_list_tests (int ,int ) ;

int
bsd_list_tests()
{
 if (kernel_post_args == 0) {
  return 0;
 }

 uint64_t prev_load_time = last_loaded_timestamp;
 int no_load_counter = 5;
 int absolute_break_counter = 15;
 int delay_duration_usecs = 300000;

 while (no_load_counter > 0) {
  printf("bsd_list_tests:INFO waiting for %d usecs\n", delay_duration_usecs);
  printf("bsd_list_tests: prev: %llu current: %llu\n", prev_load_time, last_loaded_timestamp);

  delay(delay_duration_usecs);
  absolute_break_counter -= 1;

  if (absolute_break_counter <= 0) {
   printf("bsd_list_tests: WARNING: Waiting beyond normal time for stabilizing kext loading\n");
   break;
  }

  if (prev_load_time == last_loaded_timestamp) {
   no_load_counter -= 1;
   printf("bsd_list_tests: INFO: no new kexts loaded. remaining checks: %d\n", no_load_counter);
  }

  prev_load_time = last_loaded_timestamp;
 }

 return xnupost_list_tests(bsd_post_tests, bsd_post_tests_count);
}
