
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int errno_t ;


 int EINVAL ;
 int EPERM ;
 int KDBG_EVENTID_MASK ;
 int STR_ID_SIG_MASK ;
 int g_str_id_signature ;
 scalar_t__ kdebug_validate_debugid (int) ;

__attribute__((used)) static errno_t
kdebug_check_trace_string(uint32_t debugid, uint64_t str_id)
{

 if (debugid & ~KDBG_EVENTID_MASK) {
  return EINVAL;
 }

 if (kdebug_validate_debugid(debugid)) {
  return EPERM;
 }

 if (str_id != 0 && (str_id & STR_ID_SIG_MASK) != g_str_id_signature) {
  return EINVAL;
 }

 return 0;
}
