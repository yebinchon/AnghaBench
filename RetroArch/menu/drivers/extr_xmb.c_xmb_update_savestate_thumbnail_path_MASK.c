#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {char* savestate_thumbnail_file_path; } ;
typedef  TYPE_4__ xmb_handle_t ;
struct TYPE_13__ {int state_slot; } ;
struct TYPE_12__ {scalar_t__ savestate_thumbnail_enable; } ;
struct TYPE_16__ {TYPE_2__ ints; TYPE_1__ bools; } ;
typedef  TYPE_5__ settings_t ;
struct TYPE_17__ {int path_enabled; int rich_label_enabled; int value_enabled; int sublabel_enabled; char* label; } ;
typedef  TYPE_6__ menu_entry_t ;
struct TYPE_14__ {char* savestate; } ;
struct TYPE_18__ {TYPE_3__ name; } ;
typedef  TYPE_7__ global_t ;

/* Variables and functions */
 TYPE_5__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_7__* FUNC3 () ; 
 scalar_t__ FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,size_t,char*,char*,int) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,size_t) ; 

__attribute__((used)) static void FUNC14(void *data, unsigned i)
{
   menu_entry_t entry;
   settings_t     *settings = FUNC0();
   xmb_handle_t     *xmb    = (xmb_handle_t*)data;

   if (!xmb)
      return;

   FUNC6(&entry);
   entry.path_enabled       = false;
   entry.rich_label_enabled = false;
   entry.value_enabled      = false;
   entry.sublabel_enabled   = false;
   FUNC5(&entry, 0, i, NULL, true);

   if (!FUNC10(xmb->savestate_thumbnail_file_path))
      FUNC2(xmb->savestate_thumbnail_file_path);
   xmb->savestate_thumbnail_file_path = NULL;

   if (!FUNC10(entry.label))
   {
      if (     (settings->bools.savestate_thumbnail_enable)
            && ((FUNC11(entry.label, "state_slot"))
               || (FUNC11(entry.label, "loadstate"))
               || (FUNC11(entry.label, "savestate"))))
      {
         size_t path_size         = 8204 * sizeof(char);
         char             *path   = (char*)FUNC4(path_size);
         global_t         *global = FUNC3();

         path[0] = '\0';

         if (global)
         {
            int state_slot = settings->ints.state_slot;

            if (state_slot > 0)
               FUNC8(path, path_size, "%s%d",
                     global->name.savestate, state_slot);
            else if (state_slot < 0)
               FUNC1(path,
                     global->name.savestate, "auto", '.', path_size);
            else
               FUNC13(path, global->name.savestate, path_size);
         }

         FUNC12(path, ".png", path_size);

         if (FUNC7(path))
         {
            if (!FUNC10(xmb->savestate_thumbnail_file_path))
               FUNC2(xmb->savestate_thumbnail_file_path);
            xmb->savestate_thumbnail_file_path = FUNC9(path);
         }

         FUNC2(path);
      }
   }
}