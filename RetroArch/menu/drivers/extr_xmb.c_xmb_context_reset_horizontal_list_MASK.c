#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  content_icon; int /*<<< orphan*/  icon; } ;
typedef  TYPE_1__ xmb_node_t ;
struct TYPE_11__ {float categories_x_pos; float icon_spacing_horizontal; int depth; int x; int icon_size; int /*<<< orphan*/  horizontal_list; scalar_t__ categories_selection_ptr; } ;
typedef  TYPE_2__ xmb_handle_t ;
struct texture_image {int /*<<< orphan*/ * pixels; int /*<<< orphan*/  supports_rgba; scalar_t__ height; scalar_t__ width; } ;

/* Variables and functions */
 int /*<<< orphan*/  APPLICATION_SPECIAL_DIRECTORY_ASSETS_XMB_ICONS ; 
 int /*<<< orphan*/  MENU_LIST_HORIZONTAL ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  TEXTURE_FILTER_MIPMAP_LINEAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct texture_image*) ; 
 scalar_t__ FUNC7 (struct texture_image*,char*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct texture_image*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC15 (TYPE_2__*,unsigned int) ; 
 size_t FUNC16 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC17 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC19(
      xmb_handle_t *xmb)
{
   unsigned i;
   int depth; /* keep this integer */
   size_t list_size                =
      FUNC16(xmb, MENU_LIST_HORIZONTAL);

   xmb->categories_x_pos           =
      xmb->icon_spacing_horizontal *
      -(float)xmb->categories_selection_ptr;

   depth                           = (xmb->depth > 1) ? 2 : 1;
   xmb->x                          = xmb->icon_size * -(depth*2-2);

   for (i = 0; i < list_size; i++)
   {
      const char *path                          = NULL;
      xmb_node_t *node                          =
         FUNC15(xmb, i);

      if (!node)
      {
         node = FUNC17(xmb, i);
         if (!node)
            continue;
      }

      FUNC0(xmb->horizontal_list, i,
            &path, NULL, NULL, NULL);

      if (!path)
         continue;

      if (!FUNC11(path, ".lpl"))
         continue;

      {
         struct texture_image ti;
         char *sysname             = (char*)
            FUNC8(PATH_MAX_LENGTH * sizeof(char));
         char *iconpath            = (char*)
            FUNC8(PATH_MAX_LENGTH * sizeof(char));
         char *texturepath         = (char*)
            FUNC8(PATH_MAX_LENGTH * sizeof(char));
         char *content_texturepath = (char*)
            FUNC8(PATH_MAX_LENGTH * sizeof(char));

         iconpath[0]    = sysname[0] =
            texturepath[0] = content_texturepath[0] = '\0';

         FUNC2(sysname, path,
               PATH_MAX_LENGTH * sizeof(char));

         FUNC1(iconpath,
               PATH_MAX_LENGTH * sizeof(char),
               APPLICATION_SPECIAL_DIRECTORY_ASSETS_XMB_ICONS);

         FUNC3(texturepath, iconpath, sysname,
               ".png",
               PATH_MAX_LENGTH * sizeof(char));

         /* If the playlist icon doesn't exist return default */

         if (!FUNC9(texturepath))
               FUNC3(texturepath, iconpath, "default",
               ".png",
               PATH_MAX_LENGTH * sizeof(char));

         ti.width         = 0;
         ti.height        = 0;
         ti.pixels        = NULL;
         ti.supports_rgba = FUNC12();

         if (FUNC7(&ti, texturepath))
         {
            if (ti.pixels)
            {
               FUNC14(&node->icon);
               FUNC13(&ti,
                     TEXTURE_FILTER_MIPMAP_LINEAR, &node->icon);
            }

            FUNC6(&ti);
         }

         FUNC4(sysname, sysname, "content.png",
               '-', PATH_MAX_LENGTH * sizeof(char));
         FUNC10(content_texturepath, iconpath, PATH_MAX_LENGTH * sizeof(char));
         FUNC10(content_texturepath, sysname, PATH_MAX_LENGTH * sizeof(char));

         /* If the content icon doesn't exist return default-content */

         if (!FUNC9(content_texturepath))
         {
            FUNC10(iconpath, "default", PATH_MAX_LENGTH * sizeof(char));
            FUNC4(content_texturepath, iconpath,
                  "content.png", '-',
                  PATH_MAX_LENGTH * sizeof(char));
         }

         if (FUNC7(&ti, content_texturepath))
         {
            if (ti.pixels)
            {
               FUNC14(&node->content_icon);
               FUNC13(&ti,
                     TEXTURE_FILTER_MIPMAP_LINEAR, &node->content_icon);
            }

            FUNC6(&ti);
         }

         FUNC5(sysname);
         FUNC5(iconpath);
         FUNC5(texturepath);
         FUNC5(content_texturepath);
      }
   }

   FUNC18(xmb);
}