
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct string_list {int dummy; } ;
typedef int retro_task_t ;
typedef enum database_type { ____Placeholder_database_type } database_type ;
struct TYPE_6__ {int type; int status; scalar_t__ list_ptr; struct string_list* list; } ;
typedef TYPE_1__ database_info_handle_t ;
struct TYPE_7__ {int * all_ext; } ;
typedef TYPE_2__ core_info_list_t ;


 int DATABASE_STATUS_ITERATE ;
 scalar_t__ calloc (int,int) ;
 int core_info_get_list (TYPE_2__**) ;
 struct string_list* dir_list_new (char const*,int *,int,int,int,int) ;
 int dir_list_prioritize (struct string_list*) ;
 int free (TYPE_1__*) ;

database_info_handle_t *database_info_dir_init(const char *dir,
      enum database_type type, retro_task_t *task,
      bool show_hidden_files)
{
   core_info_list_t *core_info_list = ((void*)0);
   struct string_list *list = ((void*)0);
   database_info_handle_t *db = (database_info_handle_t*)
      calloc(1, sizeof(*db));

   if (!db)
      return ((void*)0);

   core_info_get_list(&core_info_list);

   list = dir_list_new(dir, core_info_list ? core_info_list->all_ext : ((void*)0),
         0, show_hidden_files,
         0, 1);

   if (!list)
   {
      free(db);
      return ((void*)0);
   }

   dir_list_prioritize(list);

   db->list = list;
   db->list_ptr = 0;
   db->status = DATABASE_STATUS_ITERATE;
   db->type = type;

   return db;
}
