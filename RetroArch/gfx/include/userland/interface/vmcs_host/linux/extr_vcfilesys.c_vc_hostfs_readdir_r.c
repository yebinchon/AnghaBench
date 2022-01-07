
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; int st_mode; int st_mtime; int st_ctime; } ;
struct fs_dirent {char* d_name; unsigned int d_size; int d_attrib; int d_modtime; int d_creatime; } ;
struct fs_dir {char* pathbuf; size_t pathlen; int dhandle; } ;
struct dirent {int d_name; } ;


 int ATTR_DIRENT ;
 int ATTR_NORMAL ;
 int ATTR_RDONLY ;
 int DEBUG_MINOR (char*,...) ;
 int S_IFDIR ;
 int S_IWUSR ;
 struct dirent* readdir (int ) ;
 int rewinddir (int ) ;
 int stat (char*,struct stat*) ;
 int vcos_safe_strcpy (char*,int ,int,size_t) ;

struct fs_dirent *vc_hostfs_readdir_r(void *dhandle, struct fs_dirent *result)
{
   struct fs_dir *fsdir = (struct fs_dir *)dhandle;

   DEBUG_MINOR( "vc_hostfs_readdir_r(%p)", fsdir );

   if (fsdir && result)
   {
      struct dirent *dent;

      while ((dent = readdir(fsdir->dhandle)) != ((void*)0))
      {
         struct stat statbuf;
         int ret;


         fsdir->pathbuf[fsdir->pathlen] = '/';
         vcos_safe_strcpy(fsdir->pathbuf, dent->d_name, sizeof(fsdir->pathbuf), fsdir->pathlen + 1);
         ret = stat(fsdir->pathbuf, &statbuf);
         fsdir->pathbuf[fsdir->pathlen] = '\0';

         if (ret == 0)
         {
            vcos_safe_strcpy(result->d_name, dent->d_name, sizeof(result->d_name), 0);
            result->d_size = (statbuf.st_size <= 0xffffffff) ? (unsigned int)statbuf.st_size : 0xffffffff;
            result->d_attrib = ATTR_NORMAL;
            if ((statbuf.st_mode & S_IWUSR) == 0)
               result->d_attrib |= ATTR_RDONLY;
            if (statbuf.st_mode & S_IFDIR)
               result->d_attrib |= ATTR_DIRENT;
            result->d_creatime = statbuf.st_ctime;
            result->d_modtime = statbuf.st_mtime;
            DEBUG_MINOR( "vc_hostfs_readdir_r() = '%s', %x, %x", result->d_name, result->d_size, result->d_attrib );
            break;
         }
      }

      if (!dent)
      {
         DEBUG_MINOR( "vc_hostfs_readdir_r() = NULL" );
         rewinddir(fsdir->dhandle);
         result = ((void*)0);
      }
   }
   else
   {
      result = ((void*)0);
   }

   return result;
}
