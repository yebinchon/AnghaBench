
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_handle_t ;
typedef int database_state_handle_t ;
typedef int database_info_handle_t ;
 char* database_info_get_current_element_name (int *) ;
 int database_info_get_type (int *) ;
 int database_info_set_type (int *,int) ;
 scalar_t__ path_contains_compressed_file (char const*) ;
 int task_database_iterate_crc_lookup (int *,int *,int *,char const*,int *) ;
 int task_database_iterate_playlist (int *,int *,char const*) ;
 int task_database_iterate_playlist_archive (int *,int *,int *,char const*) ;
 int task_database_iterate_playlist_lutro (int *,int *,int *,char const*) ;
 int task_database_iterate_serial_lookup (int *,int *,int *,char const*) ;

__attribute__((used)) static int task_database_iterate(
      db_handle_t *_db,
      database_state_handle_t *db_state,
      database_info_handle_t *db)
{
   const char *name = database_info_get_current_element_name(db);

   if (!name)
      return 0;

   if (database_info_get_type(db) == 132)
      if (path_contains_compressed_file(name))
         database_info_set_type(db, 131);

   switch (database_info_get_type(db))
   {
      case 132:
         return task_database_iterate_playlist(db_state, db, name);
      case 131:
         return task_database_iterate_playlist_archive(_db, db_state, db, name);
      case 130:
         return task_database_iterate_playlist_lutro(_db, db_state, db, name);
      case 128:
         return task_database_iterate_serial_lookup(_db, db_state, db, name);
      case 133:
         return task_database_iterate_crc_lookup(_db, db_state, db, name, ((void*)0));
      case 129:
      default:
         break;
   }

   return 0;
}
