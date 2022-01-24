#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int connected; void* userId; int /*<<< orphan*/  handle; } ;
struct TYPE_6__ {int /*<<< orphan*/  ident; } ;
struct TYPE_5__ {void** userId; } ;
typedef  void* SceUserServiceUserId ;
typedef  TYPE_1__ SceUserServiceLoginUserIdList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 unsigned int SCE_USER_SERVICE_MAX_LOGIN_USERS ; 
 void* SCE_USER_SERVICE_USER_ID_INVALID ; 
 TYPE_4__* ds_joypad_states ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int num_players ; 
 TYPE_3__ ps4_joypad ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static bool FUNC6(void *data)
{
   int result;
   SceUserServiceLoginUserIdList userIdList;

   num_players = 0;

   FUNC3();

	result = FUNC5(&userIdList);

   FUNC0("sceUserServiceGetLoginUserIdList %x ", result);

	if (result == 0)
	{
      unsigned i;
      for (i = 0; i < SCE_USER_SERVICE_MAX_LOGIN_USERS; i++)
      {
         SceUserServiceUserId userId = userIdList.userId[i];

         FUNC0("USER %d ID %x\n", i, userId);

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
               ds_joypad_states[num_players].handle = FUNC4(userId, 0, 0, NULL);
               FUNC0("USER %x HANDLE %x\n", userId, ds_joypad_states[num_players].handle);
               if (ds_joypad_states[num_players].handle > 0)
               {
                  ds_joypad_states[num_players].connected = true;
                  ds_joypad_states[num_players].userId = userId;
                  FUNC0("NEW PAD: num_players %x \n", num_players);

                  FUNC1(
                        FUNC2(num_players),
                        NULL,
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

   return true;
}