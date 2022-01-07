
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_3__ {int numer; int denom; int member_1; int member_0; } ;
typedef TYPE_1__ mach_timebase_info_data_t ;


 scalar_t__ ERROR ;
 int KERN_SUCCESS ;
 int T_ASSERT_EQ (int ,int ,int *) ;
 int T_EXPECT_LE_ULLONG (int,unsigned long long,char*,int,int,int,int,int) ;
 int T_QUIET ;
 int USEC_PER_SEC ;
 int mach_get_times (int*,int *,struct timespec*) ;
 int mach_timebase_info (TYPE_1__*) ;
 int sleep (int) ;

__attribute__((used)) static void get_abs_to_us_scale_factor(uint64_t* numer, uint64_t* denom){
 struct timespec time;
 uint64_t old_abstime, new_abstime;
 uint64_t old_time_usec, new_time_usec;
 uint64_t time_conv1, diff;
 mach_timebase_info_data_t timebaseInfo = { 0, 0 };

 T_QUIET; T_ASSERT_EQ(mach_get_times(&old_abstime, ((void*)0), &time), KERN_SUCCESS, ((void*)0));

 old_time_usec = (uint64_t)time.tv_sec * USEC_PER_SEC + (uint64_t)time.tv_nsec/1000;

 sleep(1);

 T_QUIET; T_ASSERT_EQ(mach_get_times(&new_abstime, ((void*)0), &time), KERN_SUCCESS, ((void*)0));

 new_time_usec = (uint64_t)time.tv_sec * USEC_PER_SEC + (uint64_t)time.tv_nsec/1000;


 T_ASSERT_EQ(mach_timebase_info(&timebaseInfo), KERN_SUCCESS, ((void*)0));

 new_time_usec -= old_time_usec;
 new_abstime -= old_abstime;

 time_conv1 = new_abstime;
 time_conv1 *= timebaseInfo.numer;
 time_conv1 /= timebaseInfo.denom * 1000;

 if (time_conv1 > new_time_usec)
  diff = time_conv1 - new_time_usec;
 else
  diff = new_time_usec - time_conv1;

 T_EXPECT_LE_ULLONG(diff, (unsigned long long)ERROR, "Check scale factor time base (%u/%u) delta read usec %llu delta converted %llu delta abs %llu", timebaseInfo.numer, timebaseInfo.denom, time_conv1, new_time_usec, new_abstime);

 *numer = (uint64_t)timebaseInfo.numer;
 *denom = (uint64_t)timebaseInfo.denom * 1000;
}
