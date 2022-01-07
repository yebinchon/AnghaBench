
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char const* fullpath; } ;
typedef TYPE_1__ xmb_node_t ;
struct TYPE_7__ {int thumbnail_path_data; scalar_t__ is_db_manager_list; scalar_t__ is_playlist; } ;
typedef TYPE_2__ xmb_handle_t ;
struct TYPE_8__ {int label_enabled; int rich_label_enabled; int value_enabled; int sublabel_enabled; char const* path; } ;
typedef TYPE_3__ menu_entry_t ;
typedef int file_list_t ;


 scalar_t__ file_list_get_userdata_at_offset (int *,size_t) ;
 int * menu_entries_get_selection_buf_ptr (int ) ;
 int menu_entry_get (TYPE_3__*,int ,size_t,int *,int) ;
 int menu_entry_init (TYPE_3__*) ;
 size_t menu_navigation_get_selection () ;
 int menu_thumbnail_set_content (int ,char const*) ;
 int menu_thumbnail_set_content_image (int ,char const*,char const*) ;
 int menu_thumbnail_set_content_playlist (int ,int ,size_t) ;
 int playlist_get_cached () ;
 scalar_t__ string_is_empty (char const*) ;
 scalar_t__ string_is_equal (char const*,char*) ;

__attribute__((used)) static void xmb_set_thumbnail_content(void *data, const char *s)
{
   size_t selection = menu_navigation_get_selection();
   xmb_handle_t *xmb = (xmb_handle_t*)data;
   if (!xmb)
      return;

   if (xmb->is_playlist)
   {

      if (string_is_empty(s))
         menu_thumbnail_set_content_playlist(xmb->thumbnail_path_data,
               playlist_get_cached(), selection);
   }
   else if (xmb->is_db_manager_list)
   {

      if (string_is_empty(s))
      {
         menu_entry_t entry;

         menu_entry_init(&entry);
         entry.label_enabled = 0;
         entry.rich_label_enabled = 0;
         entry.value_enabled = 0;
         entry.sublabel_enabled = 0;
         menu_entry_get(&entry, 0, selection, ((void*)0), 1);

         if (!string_is_empty(entry.path))
            menu_thumbnail_set_content(xmb->thumbnail_path_data, entry.path);
      }
   }
   else if (string_is_equal(s, "imageviewer"))
   {

      menu_entry_t entry;
      file_list_t *selection_buf = menu_entries_get_selection_buf_ptr(0);
      xmb_node_t *node = (xmb_node_t*)file_list_get_userdata_at_offset(selection_buf, selection);

      menu_entry_init(&entry);
      entry.label_enabled = 0;
      entry.rich_label_enabled = 0;
      entry.value_enabled = 0;
      entry.sublabel_enabled = 0;
      menu_entry_get(&entry, 0, selection, ((void*)0), 1);

      if (node)
         if ( !string_is_empty(entry.path) &&
               !string_is_empty(node->fullpath))
            menu_thumbnail_set_content_image(xmb->thumbnail_path_data, node->fullpath, entry.path);
   }
   else if (!string_is_empty(s))
   {






      menu_thumbnail_set_content(xmb->thumbnail_path_data, s);
   }
}
