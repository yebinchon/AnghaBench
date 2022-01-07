
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int backtrace_thread_user (int ,uintptr_t*,int ,int *,int*) ;
 int current_thread () ;

int
backtrace_user(uintptr_t *bt, uint32_t max_frames, uint32_t *frames_out,
 bool *user_64_out)
{
 return backtrace_thread_user(current_thread(), bt, max_frames, frames_out,
  user_64_out);
}
