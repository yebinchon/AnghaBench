
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int dt_stat_token ;
typedef int dt_stat_time_t ;


 int dt_stat_stable (int ) ;
 int dt_stat_time_begin (int ) ;
 int dt_stat_time_end_batch (int ,int,int ) ;
 int getppid () ;

__attribute__((used)) static void loop_getppid(dt_stat_time_t s) {
 do {
  dt_stat_token start = dt_stat_time_begin(s);
  for (uint32_t i = 0; i<100; i++) {
   getppid();
   getppid();
   getppid();
   getppid();
   getppid();
   getppid();
   getppid();
   getppid();
   getppid();
   getppid();
  }
  dt_stat_time_end_batch(s, 1000, start);
 } while (!dt_stat_stable(s));
}
