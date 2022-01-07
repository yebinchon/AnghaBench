
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;


 size_t LOGSIZE ;
 int * delta_time ;
 int diff_nsec (scalar_t__,scalar_t__) ;
 size_t frame_cnt ;
 scalar_t__ gettime () ;
 scalar_t__ prevtime ;
 scalar_t__ video_sync ;

__attribute__((used)) static void vi_callback(u32 cnt)
{
  video_sync = 0;
}
