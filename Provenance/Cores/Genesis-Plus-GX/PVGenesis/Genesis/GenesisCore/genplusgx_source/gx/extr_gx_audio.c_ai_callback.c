
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 size_t LOGSIZE ;
 scalar_t__ audio_sync ;
 int * delta_time ;
 int diff_nsec (scalar_t__,scalar_t__) ;
 size_t frame_cnt ;
 scalar_t__ gettime () ;
 scalar_t__ prevtime ;

__attribute__((used)) static void ai_callback(void)
{
  audio_sync = 0;
}
