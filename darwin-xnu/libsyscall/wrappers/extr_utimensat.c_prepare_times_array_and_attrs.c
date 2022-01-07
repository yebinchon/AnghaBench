
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct timespec {scalar_t__ tv_nsec; } ;


 int ATTR_CMN_ACCTIME ;
 int ATTR_CMN_MODTIME ;
 int TIMEVAL_TO_TIMESPEC (struct timeval*,struct timespec*) ;
 scalar_t__ UTIME_NOW ;
 scalar_t__ UTIME_OMIT ;
 scalar_t__ __commpage_gettimeofday (struct timeval*) ;
 int __gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static int
prepare_times_array_and_attrs(struct timespec times_in[2],
  struct timespec times_out[2], size_t *times_out_size)
{
 if (times_in[0].tv_nsec == UTIME_OMIT &&
   times_in[1].tv_nsec == UTIME_OMIT) {
  return 0;
 }

 if (times_in[0].tv_nsec == UTIME_NOW ||
   times_in[1].tv_nsec == UTIME_NOW) {
  struct timespec now = {};
  {



   struct timeval tv;
   if (__commpage_gettimeofday(&tv) != 0) {
    __gettimeofday(&tv, ((void*)0));
   }
   TIMEVAL_TO_TIMESPEC(&tv, &now);
  }

  if (times_in[0].tv_nsec == UTIME_NOW) {
   times_in[0] = now;
  }
  if (times_in[1].tv_nsec == UTIME_NOW) {
   times_in[1] = now;
  }
 }

 int attrs = 0;
 *times_out_size = 0;
 struct timespec *times_cursor = times_out;
 if (times_in[1].tv_nsec != UTIME_OMIT) {
  attrs |= ATTR_CMN_MODTIME;
  *times_cursor++ = times_in[1];
  *times_out_size += sizeof(struct timespec);
 }
 if (times_in[0].tv_nsec != UTIME_OMIT) {
  attrs |= ATTR_CMN_ACCTIME;
  *times_cursor = times_in[0];
  *times_out_size += sizeof(struct timespec);
 }
 return attrs;
}
