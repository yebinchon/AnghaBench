
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union string_list_elem_attr {scalar_t__ i; } ;
struct string_list {TYPE_1__* elems; } ;
typedef int new_path ;
typedef int new_label ;
struct TYPE_2__ {int data; } ;


 int ACTION_OK_DL_RDB_ENTRY_SUBMENU ;
 int MENU_ENUM_LABEL_DEFERRED_CURSOR_MANAGER_LIST ;
 int PATH_MAX_LENGTH ;
 scalar_t__ calloc (int,int) ;
 int fill_pathname_join_delim (char*,int ,int ,char,int) ;
 int free (char*) ;
 int generic_action_ok_displaylist_push (char*,int *,char*,unsigned int,size_t,size_t,int ) ;
 int menu_cbs_exit () ;
 int msg_hash_to_str (int ) ;
 int string_list_append (struct string_list*,int ,union string_list_elem_attr) ;
 int string_list_free (struct string_list*) ;
 int string_list_join_concat (char*,int,struct string_list*,char*) ;
 struct string_list* string_list_new () ;
 struct string_list* string_split (char const*,char*) ;
 int strlcpy (char*,char*,int) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int action_ok_rdb_entry_submenu(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   union string_list_elem_attr attr;
   char new_label[PATH_MAX_LENGTH];
   char new_path[PATH_MAX_LENGTH];
   int ret = -1;
   char *rdb = ((void*)0);
   int len = 0;
   struct string_list *str_list = ((void*)0);
   struct string_list *str_list2 = ((void*)0);

   if (!label)
      return menu_cbs_exit();

   new_label[0] = new_path[0] = '\0';

   str_list = string_split(label, "|");

   if (!str_list)
      goto end;

   str_list2 = string_list_new();
   if (!str_list2)
      goto end;






   attr.i = 0;

   len += strlen(str_list->elems[1].data) + 1;
   string_list_append(str_list2, str_list->elems[1].data, attr);

   len += strlen(str_list->elems[2].data) + 1;
   string_list_append(str_list2, str_list->elems[2].data, attr);

   rdb = (char*)calloc(len, sizeof(char));

   if (!rdb)
      goto end;

   string_list_join_concat(rdb, len, str_list2, "|");
   strlcpy(new_path, rdb, sizeof(new_path));

   fill_pathname_join_delim(new_label,
         msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_CURSOR_MANAGER_LIST),
         str_list->elems[0].data, '_',
         sizeof(new_label));

   ret = generic_action_ok_displaylist_push(new_path, ((void*)0),
         new_label, type, idx, entry_idx,
         ACTION_OK_DL_RDB_ENTRY_SUBMENU);

end:
   if (rdb)
      free(rdb);
   if (str_list)
      string_list_free(str_list);
   if (str_list2)
      string_list_free(str_list2);

   return ret;
}
