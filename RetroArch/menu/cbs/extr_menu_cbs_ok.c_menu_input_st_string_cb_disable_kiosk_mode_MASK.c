#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int kiosk_mode_enable; } ;
struct TYPE_5__ {int /*<<< orphan*/  kiosk_mode_password; } ;
struct TYPE_7__ {TYPE_2__ bools; TYPE_1__ paths; } ;
typedef  TYPE_3__ settings_t ;

/* Variables and functions */
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int /*<<< orphan*/  MSG_INPUT_KIOSK_MODE_PASSWORD_NOK ; 
 int /*<<< orphan*/  MSG_INPUT_KIOSK_MODE_PASSWORD_OK ; 
 TYPE_3__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void *userdata,
      const char *str)
{
   if (str && *str)
   {
      const char *label = FUNC2();
      settings_t *settings = FUNC0();

      if (FUNC5(label, settings->paths.kiosk_mode_password))
      {
         settings->bools.kiosk_mode_enable = false;

         FUNC4(
            FUNC3(MSG_INPUT_KIOSK_MODE_PASSWORD_OK),
            1, 100, true,
            NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
      }
      else
      {
         FUNC4(
            FUNC3(MSG_INPUT_KIOSK_MODE_PASSWORD_NOK),
            1, 100, true,
            NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
      }
   }

   FUNC1();
}