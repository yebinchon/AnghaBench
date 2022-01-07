
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int info; TYPE_1__* list; scalar_t__ list_index; } ;
typedef TYPE_2__ database_state_handle_t ;
struct TYPE_5__ {scalar_t__ size; } ;


 char* database_info_get_current_name (TYPE_2__*) ;
 int database_info_list_free (int ) ;
 int database_info_list_new (char const*,char const*) ;
 int fprintf (int ,char*,unsigned int,unsigned int,char const*) ;
 int free (int ) ;
 int stderr ;

__attribute__((used)) static int database_info_list_iterate_new(database_state_handle_t *db_state,
      const char *query)
{
   const char *new_database = database_info_get_current_name(db_state);


   fprintf(stderr, "Check database [%d/%d] : %s\n", (unsigned)db_state->list_index,
         (unsigned)db_state->list->size, new_database);

   if (db_state->info)
   {
      database_info_list_free(db_state->info);
      free(db_state->info);
   }
   db_state->info = database_info_list_new(new_database, query);
   return 0;
}
