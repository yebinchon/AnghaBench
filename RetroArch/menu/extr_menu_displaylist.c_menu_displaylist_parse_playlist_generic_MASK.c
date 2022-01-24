#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  playlist_t ;
typedef  int /*<<< orphan*/  menu_handle_t ;
typedef  int /*<<< orphan*/  menu_displaylist_info_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(
      menu_handle_t *menu,
      menu_displaylist_info_t *info,
      const char *playlist_name,
      const char *playlist_path,
      bool is_collection,
      bool sort,
      int *ret)
{
   playlist_t *playlist = NULL;

   FUNC1(menu, playlist_path);

   playlist             = FUNC2();

   if (!playlist)
      return;

   if (sort)
      FUNC3(playlist);

   *ret              = FUNC0(info,
         playlist, playlist_name, is_collection);
}