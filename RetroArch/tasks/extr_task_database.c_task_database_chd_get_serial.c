
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intfstream_t ;


 int CHDSTREAM_TRACK_FIRST_DATA ;
 int RETRO_VFS_FILE_ACCESS_HINT_NONE ;
 int RETRO_VFS_FILE_ACCESS_READ ;
 int free (int *) ;
 int intfstream_close (int *) ;
 int intfstream_get_serial (int *,char*) ;
 int * intfstream_open_chd_track (char const*,int ,int ,int ) ;

__attribute__((used)) static int task_database_chd_get_serial(const char *name, char* serial)
{
   int result;
   intfstream_t *fd = intfstream_open_chd_track(
         name,
         RETRO_VFS_FILE_ACCESS_READ,
         RETRO_VFS_FILE_ACCESS_HINT_NONE,
         CHDSTREAM_TRACK_FIRST_DATA);
   if (!fd)
      return 0;

   result = intfstream_get_serial(fd, serial);
   intfstream_close(fd);
   free(fd);
   return result;
}
