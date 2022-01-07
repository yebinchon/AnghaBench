
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dpad; } ;
struct ps4 {TYPE_1__ btn; } ;


 int DPAD_DOWN ;
 int DPAD_DOWN_LEFT ;
 int DPAD_LEFT ;
 int DPAD_LEFT_UP ;
 int DPAD_RIGHT ;
 int DPAD_RIGHT_DOWN ;
 int DPAD_UP ;
 int DPAD_UP_RIGHT ;





__attribute__((used)) static bool hidpad_ps4_check_dpad(struct ps4 *rpt, unsigned id)
{
   switch (id)
   {
      case 128:
         return (rpt->btn.dpad == DPAD_LEFT_UP) || (rpt->btn.dpad == DPAD_UP) || (rpt->btn.dpad == DPAD_UP_RIGHT);
      case 129:
         return (rpt->btn.dpad == DPAD_UP_RIGHT) || (rpt->btn.dpad == DPAD_RIGHT) || (rpt->btn.dpad == DPAD_RIGHT_DOWN);
      case 131:
         return (rpt->btn.dpad == DPAD_RIGHT_DOWN) || (rpt->btn.dpad == DPAD_DOWN) || (rpt->btn.dpad == DPAD_DOWN_LEFT);
      case 130:
         return (rpt->btn.dpad == DPAD_DOWN_LEFT) || (rpt->btn.dpad == DPAD_LEFT) || (rpt->btn.dpad == DPAD_LEFT_UP);
   }

   return 0;
}
