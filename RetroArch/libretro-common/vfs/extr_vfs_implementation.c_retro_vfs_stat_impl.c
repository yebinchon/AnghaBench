
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char wchar_t ;
struct stat {int st_mode; scalar_t__ st_size; } ;
struct _stat {scalar_t__ st_size; } ;
struct TYPE_7__ {int mode; scalar_t__ size; } ;
typedef TYPE_1__ iox_stat_t ;
typedef scalar_t__ int32_t ;
struct TYPE_9__ {int st_mode; scalar_t__ st_size; } ;
struct TYPE_8__ {int st_mode; scalar_t__ st_size; } ;
typedef TYPE_2__ SceIoStat ;
typedef int DWORD ;
typedef TYPE_3__ CellFsStat ;


 int FILE_ATTRIBUTE_DIRECTORY ;
 int FIO_S_ISDIR (int ) ;
 int GetFileAttributes (char*) ;
 int GetFileAttributesW (char*) ;
 int INVALID_FILE_ATTRIBUTES ;
 int RETRO_VFS_STAT_IS_CHARACTER_SPECIAL ;
 int RETRO_VFS_STAT_IS_DIRECTORY ;
 int RETRO_VFS_STAT_IS_VALID ;
 int S_IFDIR ;
 int S_IFMT ;
 int S_ISCHR (int ) ;
 int S_ISDIR (int ) ;
 int _stat (char*,struct _stat*) ;
 int _wstat (char*,struct _stat*) ;
 scalar_t__ cellFsStat (char const*,TYPE_3__*) ;
 int fileXioDclose (int) ;
 int fileXioDopen (char const*) ;
 int fileXioGetStat (char*,TYPE_1__*) ;
 int free (char*) ;
 int orbisDclose (int) ;
 int orbisDopen (char const*) ;
 int sceIoGetstat (char*,TYPE_2__*) ;
 scalar_t__ stat (char const*,struct stat*) ;
 char* strdup (char const*) ;
 int string_is_empty (char*) ;
 size_t strlen (char*) ;
 char* utf8_to_local_string_alloc (char const*) ;
 char* utf8_to_utf16_string_alloc (char const*) ;

int retro_vfs_stat_impl(const char *path, int32_t *size)
{
   bool is_dir, is_character_special;
   struct stat buf;

   if (!path || !*path)
      return 0;
   if (stat(path, &buf) < 0)
      return 0;

   if (size)
      *size = (int32_t)buf.st_size;

   is_dir = S_ISDIR(buf.st_mode);
   is_character_special = S_ISCHR(buf.st_mode);

   return RETRO_VFS_STAT_IS_VALID | (is_dir ? RETRO_VFS_STAT_IS_DIRECTORY : 0) | (is_character_special ? RETRO_VFS_STAT_IS_CHARACTER_SPECIAL : 0);

}
