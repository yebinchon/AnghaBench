
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
typedef TYPE_1__ menucommon_s ;



 int QM_ACTIVATED ;
 int UI_PopMenu () ;

__attribute__((used)) static void DriverInfo_Event( void* ptr, int event )
{
 if (event != QM_ACTIVATED)
  return;

 switch (((menucommon_s*)ptr)->id)
 {
  case 128:
   UI_PopMenu();
   break;
 }
}
