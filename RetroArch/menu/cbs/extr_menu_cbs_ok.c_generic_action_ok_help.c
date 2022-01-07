
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;
typedef enum menu_dialog_type { ____Placeholder_menu_dialog_type } menu_dialog_type ;


 int ACTION_OK_DL_HELP ;
 int generic_action_ok_displaylist_push (char const*,int *,char const*,int,size_t,size_t,int ) ;
 char* msg_hash_to_str (int) ;

int generic_action_ok_help(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx,
      enum msg_hash_enums id, enum menu_dialog_type id2)
{
   const char *lbl = msg_hash_to_str(id);

   return generic_action_ok_displaylist_push(path, ((void*)0), lbl, id2, idx,
         entry_idx, ACTION_OK_DL_HELP);
}
