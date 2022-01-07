
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* uint32_t ;


 int MSG_COULD_NOT_FIND_VALID_DATA_TRACK ;
 int MSG_READING_FIRST_DATA_TRACK ;
 int PATH_MAX_LENGTH ;
 int RARCH_LOG (char*,char const*,...) ;
 int SIZE_MAX ;
 int free (char*) ;
 int gdi_find_track (char const*,int,char*,int ) ;
 int intfstream_file_get_crc (char*,int ,int ,char**) ;
 scalar_t__ malloc (int ) ;
 char const* msg_hash_to_str (int ) ;
 char* strerror (int) ;

__attribute__((used)) static int task_database_gdi_get_crc(const char *name, uint32_t *crc)
{
   char *track_path = (char *)malloc(PATH_MAX_LENGTH);
   int rv = 0;

   track_path[0] = '\0';

   rv = gdi_find_track(name, 1, track_path, PATH_MAX_LENGTH);

   if (rv < 0)
   {
      RARCH_LOG("%s: %s\n", msg_hash_to_str(MSG_COULD_NOT_FIND_VALID_DATA_TRACK),
                strerror(-rv));
      free(track_path);
      return 0;
   }

   RARCH_LOG("GDI '%s' primary track: %s\n", name, track_path);

   RARCH_LOG("%s\n", msg_hash_to_str(MSG_READING_FIRST_DATA_TRACK));

   rv = intfstream_file_get_crc(track_path, 0, SIZE_MAX, crc);
   if (rv == 1)
   {
      RARCH_LOG("GDI '%s' crc: %x\n", name, *crc);
   }
   free(track_path);
   return rv;
}
