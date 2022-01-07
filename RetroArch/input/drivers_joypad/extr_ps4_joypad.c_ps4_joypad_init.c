
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int connected; void* userId; int handle; } ;
struct TYPE_6__ {int ident; } ;
struct TYPE_5__ {void** userId; } ;
typedef void* SceUserServiceUserId ;
typedef TYPE_1__ SceUserServiceLoginUserIdList ;


 int RARCH_LOG (char*,int,...) ;
 unsigned int SCE_USER_SERVICE_MAX_LOGIN_USERS ;
 void* SCE_USER_SERVICE_USER_ID_INVALID ;
 TYPE_4__* ds_joypad_states ;
 int input_autoconfigure_connect (int ,int *,int ,int,int ,int ) ;
 int num_players ;
 TYPE_3__ ps4_joypad ;
 int ps4_joypad_name (int) ;
 int scePadInit () ;
 int scePadOpen (void*,int ,int ,int *) ;
 int sceUserServiceGetLoginUserIdList (TYPE_1__*) ;

__attribute__((used)) static bool ps4_joypad_init(void *data)
{
   int result;
   SceUserServiceLoginUserIdList userIdList;

   num_players = 0;

   scePadInit();

 result = sceUserServiceGetLoginUserIdList(&userIdList);

   RARCH_LOG("sceUserServiceGetLoginUserIdList %x ", result);

 if (result == 0)
 {
      unsigned i;
      for (i = 0; i < SCE_USER_SERVICE_MAX_LOGIN_USERS; i++)
      {
         SceUserServiceUserId userId = userIdList.userId[i];

         RARCH_LOG("USER %d ID %x\n", i, userId);

         if (userId != SCE_USER_SERVICE_USER_ID_INVALID)
         {
            int index = 0;

            while (index < num_players)
            {
               ds_joypad_states[index].userId = userId;
               index++;
            }

            if (index == num_players)
            {
               ds_joypad_states[num_players].handle = scePadOpen(userId, 0, 0, ((void*)0));
               RARCH_LOG("USER %x HANDLE %x\n", userId, ds_joypad_states[num_players].handle);
               if (ds_joypad_states[num_players].handle > 0)
               {
                  ds_joypad_states[num_players].connected = 1;
                  ds_joypad_states[num_players].userId = userId;
                  RARCH_LOG("NEW PAD: num_players %x \n", num_players);

                  input_autoconfigure_connect(
                        ps4_joypad_name(num_players),
                        ((void*)0),
                        ps4_joypad.ident,
                        num_players,
                        0,
                        0);
                  num_players++;
               }
            }
         }

      }

   }

   return 1;
}
