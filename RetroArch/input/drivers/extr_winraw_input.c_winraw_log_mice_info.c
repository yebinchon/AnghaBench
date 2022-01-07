
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hnd; } ;
typedef TYPE_1__ winraw_mouse_t ;
typedef int name ;
typedef scalar_t__ UINT ;


 scalar_t__ GetRawInputDeviceInfoA (int ,int ,char*,scalar_t__*) ;
 int RARCH_LOG (char*,unsigned int,char*) ;
 int RIDI_DEVICENAME ;

__attribute__((used)) static void winraw_log_mice_info(winraw_mouse_t *mice, unsigned mouse_cnt)
{
   unsigned i;
   char name[256];
   UINT name_size = sizeof(name);

   name[0] = '\0';

   for (i = 0; i < mouse_cnt; ++i)
   {
      UINT r = GetRawInputDeviceInfoA(mice[i].hnd, RIDI_DEVICENAME,
            name, &name_size);
      if (r == (UINT)-1 || r == 0)
         name[0] = '\0';
      RARCH_LOG("[WINRAW]: Mouse #%u %s.\n", i, name);
   }
}
