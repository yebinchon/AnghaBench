#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  playlist_t ;
struct TYPE_4__ {int /*<<< orphan*/  rpl_entry_selection_ptr; } ;
typedef  TYPE_1__ menu_handle_t ;
struct TYPE_5__ {int /*<<< orphan*/ * content_favorites; int /*<<< orphan*/ * image_history; int /*<<< orphan*/ * video_history; int /*<<< orphan*/ * music_history; int /*<<< orphan*/ * content_history; } ;

/* Variables and functions */
 TYPE_3__ g_defaults ; 
 int FUNC0 () ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (size_t*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char*,char*) ; 

__attribute__((used)) static int FUNC10(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   size_t new_selection_ptr;
   char *conf_path           = NULL;
   char *def_conf_path       = NULL;
   char *def_conf_music_path = NULL;
#if defined(HAVE_FFMPEG) || defined(HAVE_MPV)
   char *def_conf_video_path = NULL;
#endif
#ifdef HAVE_IMAGEVIEWER
   char *def_conf_img_path   = NULL;
#endif
   char *def_conf_fav_path   = NULL;
   playlist_t *playlist      = FUNC6();
   menu_handle_t *menu       = FUNC1();

   if (!menu)
      return FUNC0();

   conf_path                 = FUNC7(playlist);
   def_conf_path             = FUNC7(g_defaults.content_history);
   def_conf_music_path       = FUNC7(g_defaults.music_history);
#if defined(HAVE_FFMPEG) || defined(HAVE_MPV)
   def_conf_video_path       = playlist_get_conf_path(g_defaults.video_history);
#endif
#ifdef HAVE_IMAGEVIEWER
   def_conf_img_path         = playlist_get_conf_path(g_defaults.image_history);
#endif
   def_conf_fav_path         = FUNC7(g_defaults.content_favorites);

   if (FUNC9(conf_path, def_conf_path))
      playlist = g_defaults.content_history;
   else if (FUNC9(conf_path, def_conf_music_path))
      playlist = g_defaults.music_history;
#if defined(HAVE_FFMPEG) || defined(HAVE_MPV)
   else if (string_is_equal(conf_path, def_conf_video_path))
      playlist = g_defaults.video_history;
#endif
#ifdef HAVE_IMAGEVIEWER
   else if (string_is_equal(conf_path, def_conf_img_path))
      playlist = g_defaults.image_history;
#endif
   else if (FUNC9(conf_path, def_conf_fav_path))
      playlist = g_defaults.content_favorites;

   if (playlist)
   {
      FUNC5(playlist, menu->rpl_entry_selection_ptr);
      FUNC8(playlist);
   }

   new_selection_ptr = FUNC3();
   FUNC2(&new_selection_ptr, 0, 1);
   FUNC4(new_selection_ptr);

   return 0;
}