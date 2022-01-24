#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ content_favorites_size; } ;
struct TYPE_7__ {unsigned int content_history_size; } ;
struct TYPE_9__ {TYPE_2__ ints; TYPE_1__ uints; } ;
typedef  TYPE_3__ settings_t ;
struct TYPE_10__ {char* db_playlist_file; } ;
typedef  TYPE_4__ menu_handle_t ;

/* Variables and functions */
 unsigned int COLLECTION_SIZE ; 
 int /*<<< orphan*/  FILE_PATH_CONTENT_FAVORITES ; 
 int /*<<< orphan*/  FILE_PATH_CONTENT_HISTORY ; 
 int /*<<< orphan*/  FILE_PATH_CONTENT_IMAGE_HISTORY ; 
 int /*<<< orphan*/  FILE_PATH_CONTENT_MUSIC_HISTORY ; 
 int /*<<< orphan*/  FILE_PATH_CONTENT_VIDEO_HISTORY ; 
 TYPE_3__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 

__attribute__((used)) static void FUNC9(
      menu_handle_t *menu, const char *path)
{
   unsigned playlist_size         = COLLECTION_SIZE;
   const char *playlist_file_name = FUNC2(path);
   settings_t *settings           = FUNC0();

   menu->db_playlist_file[0]      = '\0';

   if (FUNC4())
      FUNC3();

   /* Get proper playlist capacity */
   if (settings && !FUNC6(playlist_file_name))
   {
      if (FUNC7(playlist_file_name, FUNC1(FILE_PATH_CONTENT_HISTORY)) ||
          FUNC7(playlist_file_name, FUNC1(FILE_PATH_CONTENT_MUSIC_HISTORY)) ||
          FUNC7(playlist_file_name, FUNC1(FILE_PATH_CONTENT_VIDEO_HISTORY)) ||
          FUNC7(playlist_file_name, FUNC1(FILE_PATH_CONTENT_IMAGE_HISTORY)))
         playlist_size = settings->uints.content_history_size;
      else if (FUNC7(playlist_file_name, FUNC1(FILE_PATH_CONTENT_FAVORITES)))
         if (settings->ints.content_favorites_size >= 0)
            playlist_size = (unsigned)settings->ints.content_favorites_size;
   }

   if (FUNC5(path, playlist_size))
      FUNC8(
            menu->db_playlist_file,
            path,
            sizeof(menu->db_playlist_file));
}