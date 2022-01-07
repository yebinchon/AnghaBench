
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* serial; int crc; int archive_crc; } ;
typedef TYPE_1__ database_state_handle_t ;
typedef int database_info_handle_t ;


 int DATABASE_TYPE_CRC_LOOKUP ;
 int DATABASE_TYPE_ITERATE_LUTRO ;
 int DATABASE_TYPE_SERIAL_LOOKUP ;







 int SIZE_MAX ;
 int database_info_set_type (int *,int ) ;
 int extension_to_file_type (int ) ;
 int gdi_prune (int *,char const*) ;
 int intfstream_file_get_crc (char const*,int ,int ,int *) ;
 int intfstream_file_get_serial (char const*,int ,int ,char*) ;
 int path_get_extension (char const*) ;
 int task_database_chd_get_crc (char const*,int *) ;
 int task_database_chd_get_serial (char const*,char*) ;
 int task_database_cue_get_crc (char const*,int *) ;
 int task_database_cue_get_serial (char const*,char*) ;
 int task_database_cue_prune (int *,char const*) ;
 int task_database_gdi_get_crc (char const*,int *) ;
 int task_database_gdi_get_serial (char const*,char*) ;

__attribute__((used)) static int task_database_iterate_playlist(
      database_state_handle_t *db_state,
      database_info_handle_t *db, const char *name)
{
   switch (extension_to_file_type(path_get_extension(name)))
   {
      case 133:






         break;

      case 132:
         task_database_cue_prune(db, name);
         db_state->serial[0] = '\0';
         if (task_database_cue_get_serial(name, db_state->serial))
            database_info_set_type(db, DATABASE_TYPE_SERIAL_LOOKUP);
         else
         {
            database_info_set_type(db, DATABASE_TYPE_CRC_LOOKUP);
            return task_database_cue_get_crc(name, &db_state->crc);
         }
         break;
      case 131:
         gdi_prune(db, name);
         db_state->serial[0] = '\0';


         if (0 && task_database_gdi_get_serial(name, db_state->serial))
            database_info_set_type(db, DATABASE_TYPE_SERIAL_LOOKUP);
         else
         {
            database_info_set_type(db, DATABASE_TYPE_CRC_LOOKUP);
            return task_database_gdi_get_crc(name, &db_state->crc);
         }
         break;

      case 128:
      case 130:
         db_state->serial[0] = '\0';
         intfstream_file_get_serial(name, 0, SIZE_MAX, db_state->serial);
         database_info_set_type(db, DATABASE_TYPE_SERIAL_LOOKUP);
         break;
      case 134:
         db_state->serial[0] = '\0';
         if (task_database_chd_get_serial(name, db_state->serial))
            database_info_set_type(db, DATABASE_TYPE_SERIAL_LOOKUP);
         else
         {
            database_info_set_type(db, DATABASE_TYPE_CRC_LOOKUP);
            return task_database_chd_get_crc(name, &db_state->crc);
         }
         break;
      case 129:
         database_info_set_type(db, DATABASE_TYPE_ITERATE_LUTRO);
         break;
      default:
         database_info_set_type(db, DATABASE_TYPE_CRC_LOOKUP);
         return intfstream_file_get_crc(name, 0, SIZE_MAX, &db_state->crc);
   }

   return 1;
}
