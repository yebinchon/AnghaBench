
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ dt_stat_time_t ;
typedef int dt_stat_t ;


 int T_ASSERT_NOTNULL (scalar_t__,char*) ;
 int dt_stat_set_variable (int ,char*,int) ;
 scalar_t__ dt_stat_time_create (char*) ;

__attribute__((used)) static dt_stat_time_t
create_stat(int proc_wired_mem, int nthreads)
{
 dt_stat_time_t dst = dt_stat_time_create("time");
 T_ASSERT_NOTNULL(dst, "created time statistic");

 dt_stat_set_variable((dt_stat_t)dst, "proc_threads", nthreads);
 dt_stat_set_variable((dt_stat_t)dst, "proc_wired_mem", proc_wired_mem);;

 return dst;
}
