#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char const* fullpath; } ;
typedef  TYPE_1__ xmb_node_t ;
struct TYPE_7__ {int /*<<< orphan*/  thumbnail_path_data; scalar_t__ is_db_manager_list; scalar_t__ is_playlist; } ;
typedef  TYPE_2__ xmb_handle_t ;
struct TYPE_8__ {int label_enabled; int rich_label_enabled; int value_enabled; int sublabel_enabled; char const* path; } ;
typedef  TYPE_3__ menu_entry_t ;
typedef  int /*<<< orphan*/  file_list_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 size_t FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 

__attribute__((used)) static void FUNC11(void *data, const char *s)
{
   size_t selection  = FUNC4();
   xmb_handle_t *xmb = (xmb_handle_t*)data;
   if (!xmb)
      return;

   if (xmb->is_playlist)
   {
      /* Playlist content */
      if (FUNC9(s))
         FUNC7(xmb->thumbnail_path_data,
               FUNC8(), selection);
   }
   else if (xmb->is_db_manager_list)
   {
      /* Database list content */
      if (FUNC9(s))
      {
         menu_entry_t entry;

         FUNC3(&entry);
         entry.label_enabled      = false;
         entry.rich_label_enabled = false;
         entry.value_enabled      = false;
         entry.sublabel_enabled   = false;
         FUNC2(&entry, 0, selection, NULL, true);

         if (!FUNC9(entry.path))
            FUNC5(xmb->thumbnail_path_data, entry.path);
      }
   }
   else if (FUNC10(s, "imageviewer"))
   {
      /* Filebrowser image updates */
      menu_entry_t entry;
      file_list_t *selection_buf = FUNC1(0);
      xmb_node_t *node = (xmb_node_t*)FUNC0(selection_buf, selection);

      FUNC3(&entry);
      entry.label_enabled      = false;
      entry.rich_label_enabled = false;
      entry.value_enabled      = false;
      entry.sublabel_enabled   = false;
      FUNC2(&entry, 0, selection, NULL, true);

      if (node)
         if (  !FUNC9(entry.path) && 
               !FUNC9(node->fullpath))
            FUNC6(xmb->thumbnail_path_data, node->fullpath, entry.path);
   }
   else if (!FUNC9(s))
   {
      /* Annoying leftovers...
       * This is required to ensure that thumbnails are
       * updated correctly when navigating deeply through
       * the sublevels of database manager lists.
       * Showing thumbnails on database entries is a
       * pointless nuisance and a waste of CPU cycles, IMHO... */
      FUNC5(xmb->thumbnail_path_data, s);
   }
}