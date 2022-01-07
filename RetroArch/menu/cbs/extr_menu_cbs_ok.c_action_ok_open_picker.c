
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACTION_OK_DL_CONTENT_LIST ;
 int MENU_ENUM_LABEL_FAVORITES ;
 int free (char*) ;
 int generic_action_ok_displaylist_push (char const*,char*,int ,unsigned int,size_t,size_t,int ) ;
 int msg_hash_to_str (int ) ;
 int retro_assert (int) ;
 char* uwp_trigger_picker () ;

__attribute__((used)) static int action_ok_open_picker(const char *path,
   const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   int ret;





   char *new_path = ((void*)0);
   retro_assert(0);


   ret = generic_action_ok_displaylist_push(path, new_path,
      msg_hash_to_str(MENU_ENUM_LABEL_FAVORITES),
      type, idx,
      entry_idx, ACTION_OK_DL_CONTENT_LIST);

   free(new_path);
   return ret;
}
