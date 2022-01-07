
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int boolean_t ;
struct TYPE_2__ {int kdebug_flags; } ;


 scalar_t__ DBG_TRACE ;
 int FALSE ;
 int KDBG_EVENTID_MASK ;
 scalar_t__ KDBG_EXTRACT_CLASS (int) ;
 int KDBG_RANGECHECK ;
 int KDBG_TYPEFILTER_CHECK ;
 int KDBG_VALCHECK ;
 int TRUE ;
 TYPE_1__ kd_ctrl_page ;
 int kdbg_typefilter ;
 int kdlog_beg ;
 int kdlog_end ;
 int kdlog_value1 ;
 int kdlog_value2 ;
 int kdlog_value3 ;
 int kdlog_value4 ;
 int typefilter_is_debugid_allowed (int ,int) ;

boolean_t
kdebug_debugid_explicitly_enabled(uint32_t debugid)
{
 if (kd_ctrl_page.kdebug_flags & KDBG_TYPEFILTER_CHECK) {
  return typefilter_is_debugid_allowed(kdbg_typefilter, debugid);
 } else if (KDBG_EXTRACT_CLASS(debugid) == DBG_TRACE) {
  return TRUE;
 } else if (kd_ctrl_page.kdebug_flags & KDBG_RANGECHECK) {
  if (debugid < kdlog_beg || debugid > kdlog_end) {
   return FALSE;
  }
 } else if (kd_ctrl_page.kdebug_flags & KDBG_VALCHECK) {
  if ((debugid & KDBG_EVENTID_MASK) != kdlog_value1 &&
   (debugid & KDBG_EVENTID_MASK) != kdlog_value2 &&
   (debugid & KDBG_EVENTID_MASK) != kdlog_value3 &&
   (debugid & KDBG_EVENTID_MASK) != kdlog_value4)
  {
   return FALSE;
  }
 }

 return TRUE;
}
