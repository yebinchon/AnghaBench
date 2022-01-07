
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ categories_selection_ptr; scalar_t__ system_tab_end; int title_name; int horizontal_list; } ;
typedef TYPE_1__ xmb_handle_t ;


 int fill_pathname_base_noext (int ,char const*,int) ;
 int menu_entries_get_at_offset (int ,scalar_t__,char const**,int *,int *,int *,int *) ;
 int menu_entries_get_title (int ,int) ;

__attribute__((used)) static void xmb_set_title(xmb_handle_t *xmb)
{
   if (xmb->categories_selection_ptr <= xmb->system_tab_end)
      menu_entries_get_title(xmb->title_name, sizeof(xmb->title_name));
   else
   {
      const char *path = ((void*)0);
      menu_entries_get_at_offset(
            xmb->horizontal_list,
            xmb->categories_selection_ptr - (xmb->system_tab_end + 1),
            &path, ((void*)0), ((void*)0), ((void*)0), ((void*)0));

      if (!path)
         return;

      fill_pathname_base_noext(
            xmb->title_name, path, sizeof(xmb->title_name));
   }
}
