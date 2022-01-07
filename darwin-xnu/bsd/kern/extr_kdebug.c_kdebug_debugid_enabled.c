
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int boolean_t ;
struct TYPE_2__ {int kdebug_slowcheck; } ;


 int TRUE ;
 TYPE_1__ kd_ctrl_page ;
 int kdebug_debugid_explicitly_enabled (int ) ;

boolean_t
kdebug_debugid_enabled(uint32_t debugid)
{

 if (!kd_ctrl_page.kdebug_slowcheck) {
  return TRUE;
 }

 return kdebug_debugid_explicitly_enabled(debugid);
}
