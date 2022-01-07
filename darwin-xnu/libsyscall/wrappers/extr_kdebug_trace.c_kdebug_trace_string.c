
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int int64_t ;


 int EINVAL ;
 scalar_t__ __kdebug_trace_string (int ,scalar_t__,char const*) ;
 int errno ;
 int kdebug_is_enabled (int ) ;

uint64_t
kdebug_trace_string(uint32_t debugid, uint64_t str_id, const char *str)
{
 if (!kdebug_is_enabled(debugid)) {
  return 0;
 }

 if ((int64_t)str_id == -1) {
  errno = EINVAL;
  return (uint64_t)-1;
 }

 if (str_id == 0 && str == ((void*)0)) {
  errno = EINVAL;
  return (uint64_t)-1;
 }

 return __kdebug_trace_string(debugid, str_id, str);
}
