#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {char const* string; } ;
struct TYPE_20__ {char* name; int (* action_up ) (TYPE_2__*) ;int (* action_down ) (TYPE_2__*) ;int (* action_left ) (TYPE_2__*,int) ;int (* action_right ) (TYPE_2__*,int) ;int (* action_select ) (TYPE_2__*,int) ;int (* action_ok ) (TYPE_2__*,int) ;int (* action_cancel ) (TYPE_2__*) ;int (* action_start ) (TYPE_2__*) ;TYPE_1__ default_value; } ;
typedef  TYPE_2__ rarch_setting_t ;
struct TYPE_21__ {unsigned int type; size_t directory_ptr; int /*<<< orphan*/ * list; void* label; void* path; } ;
typedef  TYPE_3__ menu_displaylist_info_t ;
typedef  int /*<<< orphan*/  file_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  DISPLAYLIST_GENERIC ; 
#define  MENU_ACTION_CANCEL 147 
#define  MENU_ACTION_DOWN 146 
#define  MENU_ACTION_LEFT 145 
#define  MENU_ACTION_OK 144 
#define  MENU_ACTION_RIGHT 143 
#define  MENU_ACTION_SELECT 142 
#define  MENU_ACTION_START 141 
#define  MENU_ACTION_UP 140 
 int /*<<< orphan*/  RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_IMAGE ; 
 int /*<<< orphan*/  RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_PATH ; 
#define  ST_ACTION 139 
#define  ST_BIND 138 
#define  ST_BOOL 137 
#define  ST_DIR 136 
#define  ST_FLOAT 135 
#define  ST_HEX 134 
#define  ST_INT 133 
#define  ST_PATH 132 
#define  ST_SIZE 131 
#define  ST_STRING 130 
#define  ST_STRING_OPTIONS 129 
#define  ST_UINT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 () ; 
 int FUNC7 (TYPE_2__*,int) ; 
 int FUNC8 (TYPE_2__*) ; 
 void* FUNC9 (char const*) ; 
 int FUNC10 (TYPE_2__*) ; 
 int FUNC11 (TYPE_2__*) ; 
 int FUNC12 (TYPE_2__*,int) ; 
 int FUNC13 (TYPE_2__*,int) ; 
 int FUNC14 (TYPE_2__*,int) ; 
 int FUNC15 (TYPE_2__*,int) ; 
 int FUNC16 (TYPE_2__*) ; 
 int FUNC17 (TYPE_2__*) ; 

int FUNC18(rarch_setting_t *setting,
      unsigned type, unsigned action, bool wraparound)
{
   if (!setting)
      return -1;

   switch (FUNC8(setting))
   {
      case ST_PATH:
         if (action == MENU_ACTION_OK)
         {
            menu_displaylist_info_t  info;
            file_list_t       *menu_stack = FUNC5(0);
            const char      *name         = setting->name;
            size_t selection              = FUNC6();

            FUNC2(&info);

            info.path                     = FUNC9(setting->default_value.string);
            info.label                    = FUNC9(name);
            info.type                     = type;
            info.directory_ptr            = selection;
            info.list                     = menu_stack;

            if (FUNC0(DISPLAYLIST_GENERIC, &info))
               FUNC3(&info);

            FUNC1(&info);
         }
         /* fall-through. */
      case ST_BOOL:
      case ST_INT:
      case ST_UINT:
      case ST_SIZE:
      case ST_HEX:
      case ST_FLOAT:
      case ST_STRING:
      case ST_STRING_OPTIONS:
      case ST_DIR:
      case ST_BIND:
      case ST_ACTION:
         {
            int ret = -1;
            switch (action)
            {
               case MENU_ACTION_UP:
                  if (setting->action_up)
                     ret = setting->action_up(setting);
                  break;
               case MENU_ACTION_DOWN:
                  if (setting->action_down)
                     ret = setting->action_down(setting);
                  break;
               case MENU_ACTION_LEFT:
                  if (setting->action_left)
                  {
                     ret = setting->action_left(setting, false);
                     FUNC4(
                           RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_PATH,
                           NULL);
                     FUNC4(
                           RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_IMAGE,
                           NULL);
                  }
                  break;
               case MENU_ACTION_RIGHT:
                  if (setting->action_right)
                  {
                     ret = setting->action_right(setting, false);
                     FUNC4(
                           RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_PATH,
                           NULL);
                     FUNC4(
                           RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_IMAGE,
                           NULL);
                  }
                  break;
               case MENU_ACTION_SELECT:
                  if (setting->action_select)
                     ret = setting->action_select(setting, true);
                  break;
               case MENU_ACTION_OK:
                  if (setting->action_ok)
                     ret = setting->action_ok(setting, false);
                  break;
               case MENU_ACTION_CANCEL:
                  if (setting->action_cancel)
                     ret = setting->action_cancel(setting);
                  break;
               case MENU_ACTION_START:
                  if (setting->action_start)
                     ret = setting->action_start(setting);
                  break;
            }

            if (ret == 0)
               return FUNC7(setting, wraparound);
         }
         break;
      default:
         break;
   }

   return -1;
}