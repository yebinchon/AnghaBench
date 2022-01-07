
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


union string_list_elem_attr {scalar_t__ i; } ;
struct string_list {int dummy; } ;
typedef int retro_task_t ;
typedef enum database_type { ____Placeholder_database_type } database_type ;
struct TYPE_4__ {int type; int status; struct string_list* list; scalar_t__ list_ptr; } ;
typedef TYPE_1__ database_info_handle_t ;


 int DATABASE_STATUS_ITERATE ;
 scalar_t__ calloc (int,int) ;
 int free (TYPE_1__*) ;
 int string_list_append (struct string_list*,char const*,union string_list_elem_attr) ;
 struct string_list* string_list_new () ;

database_info_handle_t *database_info_file_init(const char *path,
      enum database_type type, retro_task_t *task)
{
   union string_list_elem_attr attr;
   struct string_list *list = ((void*)0);
   database_info_handle_t *db = (database_info_handle_t*)
      calloc(1, sizeof(*db));

   if (!db)
      return ((void*)0);

   attr.i = 0;

   list = string_list_new();

   if (!list)
   {
      free(db);
      return ((void*)0);
   }

   string_list_append(list, path, attr);

   db->list_ptr = 0;
   db->list = list;
   db->status = DATABASE_STATUS_ITERATE;
   db->type = type;

   return db;
}
