
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * info; scalar_t__ entry_index; int list_index; } ;
typedef TYPE_1__ database_state_handle_t ;


 int database_info_list_free (int *) ;
 int free (int *) ;

__attribute__((used)) static int database_info_list_iterate_next(
      database_state_handle_t *db_state
      )
{
   db_state->list_index++;
   db_state->entry_index = 0;

   database_info_list_free(db_state->info);
   free(db_state->info);
   db_state->info = ((void*)0);

   return 1;
}
