#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int x; float alpha; float label_alpha; } ;
typedef  TYPE_3__ stripes_node_t ;
struct TYPE_13__ {char* bg_file_path; float items_passive_alpha; int icon_spacing_horizontal; float items_active_alpha; int /*<<< orphan*/  title_name; } ;
typedef  TYPE_4__ stripes_handle_t ;
struct TYPE_11__ {int /*<<< orphan*/  directory_dynamic_wallpapers; } ;
struct TYPE_10__ {scalar_t__ menu_dynamic_wallpaper_enable; } ;
struct TYPE_14__ {TYPE_2__ paths; TYPE_1__ bools; } ;
typedef  TYPE_5__ settings_t ;
typedef  int /*<<< orphan*/  file_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  APPLICATION_SPECIAL_DIRECTORY_ASSETS_XMB_BG ; 
 int PATH_MAX_LENGTH ; 
 TYPE_5__* FUNC0 () ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  menu_display_handle_wallpaper_upload ; 
 scalar_t__ FUNC7 (char*) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 char* FUNC11 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,unsigned int,size_t,size_t,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,uintptr_t,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC17 () ; 

__attribute__((used)) static void FUNC18(stripes_handle_t *stripes,
      file_list_t *list, int dir, size_t current)
{
   unsigned i, first, last, height;
   size_t end           = 0;
   settings_t *settings = FUNC0();

   if (settings->bools.menu_dynamic_wallpaper_enable)
   {
      size_t path_size = PATH_MAX_LENGTH * sizeof(char);
      char       *path = (char*)FUNC6(PATH_MAX_LENGTH * sizeof(char));
      char       *tmp  = FUNC11(stripes->title_name, "/", " ");

      path[0]          = '\0';

      if (tmp)
      {
         FUNC4(
               path,
               settings->paths.directory_dynamic_wallpapers,
               tmp,
               path_size);
         FUNC5(tmp);
      }

      FUNC14(path, ".png", path_size);

      if (!FUNC7(path))
         FUNC3(path, path_size,
               APPLICATION_SPECIAL_DIRECTORY_ASSETS_XMB_BG);

       if (!FUNC10(path, stripes->bg_file_path))
       {
           if (FUNC7(path))
           {
              FUNC15(path,
                    FUNC17(), 0,
                  menu_display_handle_wallpaper_upload, NULL);
              if (!FUNC9(stripes->bg_file_path))
                 FUNC5(stripes->bg_file_path);
              stripes->bg_file_path = FUNC8(path);
           }
       }

       FUNC5(path);
   }

   end = FUNC1(list);

   first = 0;
   last  = end > 0 ? end - 1 : 0;

   FUNC16(NULL, &height);
   FUNC12(stripes, height, end, current, &first, &last);

   for (i = 0; i < end; i++)
   {
      stripes_node_t *node = (stripes_node_t*)
         FUNC2(list, i);
      float ia         = stripes->items_passive_alpha;

      if (!node)
         continue;

      node->x           = stripes->icon_spacing_horizontal * dir;
      node->alpha       = 0;
      node->label_alpha = 0;

      if (i == current)
         ia = stripes->items_active_alpha;

      if (i >= first && i <= last)
         FUNC13(node, (uintptr_t)list, ia, 0);
      else
      {
         node->x     = 0;
         node->alpha = node->label_alpha = ia;
      }
   }
}