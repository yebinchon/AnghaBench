
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int str_buf ;


 int EINVAL ;
 int MAX_STR_LEN ;
 int STR_BUF_SIZE ;
 scalar_t__ __probable (int) ;
 int assert (int *) ;
 int kdebug_check_trace_string (int ,int ) ;
 int kdebug_current_proc_enabled (int ) ;
 int kdebug_debugid_enabled (int ) ;
 scalar_t__ kdebug_enable ;
 int kernel_debug_string_internal (int ,int ,char*,int ) ;
 int memset (char*,int ,int) ;
 int static_assert (int) ;
 int strlcpy (char*,char const*,int) ;

int
kernel_debug_string(uint32_t debugid, uint64_t *str_id, const char *str)
{

 __attribute__((aligned(sizeof(uintptr_t)))) char str_buf[STR_BUF_SIZE];
 static_assert(sizeof(str_buf) > MAX_STR_LEN);
 vm_size_t len_copied;
 int err;

 assert(str_id);

 if (__probable(kdebug_enable == 0)) {
  return 0;
 }

 if (!kdebug_current_proc_enabled(debugid)) {
  return 0;
 }

 if (!kdebug_debugid_enabled(debugid)) {
  return 0;
 }

 if ((err = kdebug_check_trace_string(debugid, *str_id)) != 0) {
  return err;
 }

 if (str == ((void*)0)) {
  if (str_id == 0) {
   return EINVAL;
  }

  *str_id = kernel_debug_string_internal(debugid, *str_id, ((void*)0), 0);
  return 0;
 }

 memset(str_buf, 0, sizeof(str_buf));
 len_copied = strlcpy(str_buf, str, MAX_STR_LEN + 1);
 *str_id = kernel_debug_string_internal(debugid, *str_id, str_buf,
                                        len_copied);
 return 0;
}
