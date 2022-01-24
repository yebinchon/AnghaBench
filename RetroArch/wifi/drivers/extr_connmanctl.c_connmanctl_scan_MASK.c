#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
union string_list_elem_attr {int /*<<< orphan*/  i; } ;
struct TYPE_4__ {int localap_enable; } ;
struct TYPE_5__ {TYPE_1__ bools; } ;
typedef  TYPE_2__ settings_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int /*<<< orphan*/  MSG_LOCALAP_SWITCHING_OFF ; 
 int /*<<< orphan*/  MSG_WIFI_SCAN_COMPLETE ; 
 int /*<<< orphan*/  RARCH_FILETYPE_UNSET ; 
 TYPE_2__* FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ lines ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char*,union string_list_elem_attr) ; 
 scalar_t__ FUNC10 () ; 
 size_t FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(void)
{
   char line[512];
   union string_list_elem_attr attr;
   FILE *serv_file                  = NULL;
   settings_t *settings             = FUNC0();

   attr.i = RARCH_FILETYPE_UNSET;
   if (lines)
      FUNC4(lines);
   lines = FUNC10();

   if (FUNC1())
   {
      FUNC8(FUNC5(MSG_LOCALAP_SWITCHING_OFF),
            1, 180, true, NULL, MESSAGE_QUEUE_ICON_DEFAULT,
            MESSAGE_QUEUE_CATEGORY_INFO);
      settings->bools.localap_enable = false;
      FUNC2(false, "", "");
   }

   FUNC6(FUNC7("connmanctl enable wifi", "r"));

   FUNC6(FUNC7("connmanctl scan wifi", "r"));

   FUNC8(FUNC5(MSG_WIFI_SCAN_COMPLETE),
         1, 180, true, NULL, MESSAGE_QUEUE_ICON_DEFAULT,
         MESSAGE_QUEUE_CATEGORY_INFO);

   serv_file = FUNC7("connmanctl services", "r");
   while (FUNC3 (line, 512, serv_file) != NULL)
   {
      size_t len = FUNC11(line);
      if (len > 0 && line[len-1] == '\n')
         line[--len] = '\0';

      FUNC9(lines, line, attr);
   }
   FUNC6(serv_file);
}