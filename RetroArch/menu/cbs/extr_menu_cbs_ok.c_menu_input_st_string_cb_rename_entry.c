
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct playlist_entry {char* label; int member_0; } ;


 int command_playlist_update_write (int *,int ,struct playlist_entry*) ;
 int menu_input_dialog_end () ;
 char* menu_input_dialog_get_buffer () ;
 int menu_input_dialog_get_kb_idx () ;
 int string_is_empty (char const*) ;

__attribute__((used)) static void menu_input_st_string_cb_rename_entry(void *userdata,
      const char *str)
{
   if (str && *str)
   {
      const char *label = menu_input_dialog_get_buffer();

      if (!string_is_empty(label))
      {
         struct playlist_entry entry = {0};


         entry.label = (char*)label;

         command_playlist_update_write(((void*)0),
               menu_input_dialog_get_kb_idx(),
               &entry);
      }
   }

   menu_input_dialog_end();
}
