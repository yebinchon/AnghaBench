#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_2__* horizontal_list; } ;
typedef  TYPE_3__ stripes_handle_t ;
struct TYPE_13__ {char* directory_playlist; } ;
struct TYPE_16__ {TYPE_1__ paths; } ;
typedef  TYPE_4__ settings_t ;
struct TYPE_17__ {void* path; int /*<<< orphan*/  type_default; void* exts; int /*<<< orphan*/  enum_idx; void* label; TYPE_2__* list; } ;
typedef  TYPE_5__ menu_displaylist_info_t ;
struct TYPE_14__ {size_t size; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISPLAYLIST_DATABASE_PLAYLISTS_HORIZONTAL ; 
 int /*<<< orphan*/  FILE_TYPE_PLAIN ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_CONTENT_COLLECTION_LIST ; 
 TYPE_4__* FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,unsigned int) ; 

__attribute__((used)) static void FUNC9(stripes_handle_t *stripes)
{
   menu_displaylist_info_t info;
   settings_t *settings         = FUNC0();

   FUNC3(&info);

   info.list                    = stripes->horizontal_list;
   info.path                    = FUNC6(
         settings->paths.directory_playlist);
#if 0
   /* TODO/FIXME - will need to look what to do here */
   info.label                   = strdup(
         msg_hash_to_str(MENU_ENUM_LABEL_CONTENT_COLLECTION_LIST));
   info.enum_idx                = MENU_ENUM_LABEL_CONTENT_COLLECTION_LIST;
#endif
   info.exts                    = FUNC6("lpl");
   info.type_default            = FILE_TYPE_PLAIN;

   if (!FUNC7(info.path))
   {
      if (FUNC1(DISPLAYLIST_DATABASE_PLAYLISTS_HORIZONTAL, &info))
      {
         size_t i;
         for (i = 0; i < stripes->horizontal_list->size; i++)
            FUNC8(stripes, (unsigned)i);
         FUNC4(&info);
      }
   }

   FUNC2(&info);
}