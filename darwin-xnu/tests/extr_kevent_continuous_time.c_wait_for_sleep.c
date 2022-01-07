
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ int64_t ;


 int T_LOG (char*,int) ;
 int llabs (scalar_t__) ;
 int run_sleep_tests ;
 int sleep (int) ;
 scalar_t__ time_delta_ms () ;

__attribute__((used)) static int wait_for_sleep() {
 if(!run_sleep_tests) return 0;

 uint64_t before_diff = time_delta_ms();

 for(int i = 0; i < 30; i++) {
  uint64_t after_diff = time_delta_ms();



  if(llabs((int64_t)before_diff - (int64_t)after_diff) > 2) {
   return i + 1;
  }

  sleep(1);
  T_LOG("waited %d seconds for sleep...", i+1);
 }
 return -1;
}
