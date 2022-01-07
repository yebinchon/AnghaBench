
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int intfstream_t ;


 int CHDSTREAM_TRACK_PRIMARY ;
 int RARCH_LOG (char*,char const*,int ) ;
 int RETRO_VFS_FILE_ACCESS_HINT_NONE ;
 int RETRO_VFS_FILE_ACCESS_READ ;
 int free (int *) ;
 int intfstream_close (int *) ;
 int intfstream_get_crc (int *,int *) ;
 int * intfstream_open_chd_track (char const*,int ,int ,int ) ;

__attribute__((used)) static bool task_database_chd_get_crc(const char *name, uint32_t *crc)
{
   int rv;
   intfstream_t *fd = intfstream_open_chd_track(
         name,
         RETRO_VFS_FILE_ACCESS_READ,
         RETRO_VFS_FILE_ACCESS_HINT_NONE,
         CHDSTREAM_TRACK_PRIMARY);
   if (!fd)
      return 0;

   rv = intfstream_get_crc(fd, crc);
   if (rv == 1)
   {
      RARCH_LOG("CHD '%s' crc: %x\n", name, *crc);
   }
   if (fd)
   {
      intfstream_close(fd);
      free(fd);
   }
   return rv;
}
