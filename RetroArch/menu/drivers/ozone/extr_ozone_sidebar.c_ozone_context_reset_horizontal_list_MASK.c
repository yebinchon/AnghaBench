#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  title_noext ;
struct texture_image {int /*<<< orphan*/ * pixels; int /*<<< orphan*/  supports_rgba; scalar_t__ height; scalar_t__ width; } ;
struct TYPE_9__ {scalar_t__ ozone_truncate_playlist_name; } ;
struct TYPE_10__ {TYPE_1__ bools; } ;
typedef  TYPE_2__ settings_t ;
struct TYPE_11__ {char* console_name; int /*<<< orphan*/  content_icon; int /*<<< orphan*/  icon; } ;
typedef  TYPE_3__ ozone_node_t ;
struct TYPE_12__ {int /*<<< orphan*/  horizontal_list; int /*<<< orphan*/  icons_path; } ;
typedef  TYPE_4__ ozone_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_LIST_HORIZONTAL ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  TEXTURE_FILTER_MIPMAP_LINEAR ; 
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,char,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct texture_image*) ; 
 scalar_t__ FUNC8 (struct texture_image*,char*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned int,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC11 () ; 
 size_t FUNC12 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 char* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 char* FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (struct texture_image*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

void FUNC22(ozone_handle_t *ozone)
{
   unsigned i;
   const char *title;
   char title_noext[255];
   char *chr;
   bool hyphen_found;
   settings_t *settings = FUNC0();

   size_t list_size  = FUNC12(ozone, MENU_LIST_HORIZONTAL);

   for (i = 0; i < list_size; i++)
   {
      const char *path     = NULL;
      ozone_node_t *node   = (ozone_node_t*)FUNC2(ozone->horizontal_list, i);

      if (!node)
      {
         node = FUNC11();
         if (!node)
            continue;
      }

      FUNC1(ozone->horizontal_list, i,
            &path, NULL, NULL, NULL);

      if (!path)
         continue;

      if (!FUNC18(path, ".lpl"))
         continue;

      {
         struct texture_image ti;
         char *sysname             = (char*)
            FUNC9(PATH_MAX_LENGTH * sizeof(char));
         char *texturepath         = (char*)
            FUNC9(PATH_MAX_LENGTH * sizeof(char));
         char *content_texturepath = (char*)
            FUNC9(PATH_MAX_LENGTH * sizeof(char));
         char *icons_path          = (char*)
            FUNC9(PATH_MAX_LENGTH * sizeof(char));

         FUNC17(icons_path, ozone->icons_path, PATH_MAX_LENGTH * sizeof(char));

         sysname[0] = texturepath[0] = content_texturepath[0] = '\0';

         FUNC3(sysname, path,
               PATH_MAX_LENGTH * sizeof(char));

         FUNC4(texturepath, icons_path, sysname,
               ".png",
               PATH_MAX_LENGTH * sizeof(char));

         /* If the playlist icon doesn't exist return default */

         if (!FUNC14(texturepath))
               FUNC4(texturepath, icons_path, "default",
               ".png",
               PATH_MAX_LENGTH * sizeof(char));

         ti.width         = 0;
         ti.height        = 0;
         ti.pixels        = NULL;
         ti.supports_rgba = FUNC19();

         if (FUNC8(&ti, texturepath))
         {
            if(ti.pixels)
            {
               FUNC21(&node->icon);
               FUNC20(&ti,
                     TEXTURE_FILTER_MIPMAP_LINEAR, &node->icon);
            }

            FUNC7(&ti);
         }

         FUNC5(sysname, sysname,
               "content.png", '-',
               PATH_MAX_LENGTH * sizeof(char));
         FUNC16(content_texturepath, icons_path, PATH_MAX_LENGTH * sizeof(char));

         FUNC16(content_texturepath, FUNC13(), PATH_MAX_LENGTH * sizeof(char));
         FUNC16(content_texturepath, sysname, PATH_MAX_LENGTH * sizeof(char));

         /* If the content icon doesn't exist return default-content */
         if (!FUNC14(content_texturepath))
         {
            FUNC16(icons_path, FUNC13(), PATH_MAX_LENGTH * sizeof(char));
            FUNC16(icons_path, "default", PATH_MAX_LENGTH * sizeof(char));
            FUNC5(content_texturepath, icons_path,
                  "content.png", '-',
                  PATH_MAX_LENGTH * sizeof(char));
         }

         if (FUNC8(&ti, content_texturepath))
         {
            if(ti.pixels)
            {
               FUNC21(&node->content_icon);
               FUNC20(&ti,
                     TEXTURE_FILTER_MIPMAP_LINEAR, &node->content_icon);
            }

            FUNC7(&ti);
         }

         /* Console name */
         FUNC10(
            ozone->horizontal_list,
            i,
            &title, NULL, NULL, NULL, NULL);

         FUNC3(title_noext, title, sizeof(title_noext));

         /* Format : "Vendor - Console"
            Remove everything before the hyphen
            and the subsequent space */
         chr          = title_noext;
         hyphen_found = false;

         while (settings->bools.ozone_truncate_playlist_name)
         {
            /* Check for "- " */
            if (*chr == '-' && *(chr + 1) == ' ')
            {
               hyphen_found = true;
               break;
            }
            else if (*chr == '\0')
               break;

            chr++;
         }

         if (hyphen_found)
            chr += 2;
         else
            chr = title_noext;

         if (node->console_name)
            FUNC6(node->console_name);

         node->console_name = FUNC15(chr);

         FUNC6(sysname);
         FUNC6(texturepath);
         FUNC6(content_texturepath);
         FUNC6(icons_path);
      }
   }
}