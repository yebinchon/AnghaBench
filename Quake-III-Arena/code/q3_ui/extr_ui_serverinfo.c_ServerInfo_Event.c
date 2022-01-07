
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
typedef TYPE_1__ menucommon_s ;


 int Favorites_Add () ;


 int QM_ACTIVATED ;
 int UI_PopMenu () ;

__attribute__((used)) static void ServerInfo_Event( void* ptr, int event )
{
 switch (((menucommon_s*)ptr)->id)
 {
  case 129:
   if (event != QM_ACTIVATED)
    break;

   Favorites_Add();
   UI_PopMenu();
   break;

  case 128:
   if (event != QM_ACTIVATED)
    break;

   UI_PopMenu();
   break;
 }
}
