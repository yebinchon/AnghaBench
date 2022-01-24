#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct stat {int st_size; int st_mode; int /*<<< orphan*/  st_mtime; int /*<<< orphan*/  st_ctime; } ;
struct fs_dirent {char* d_name; unsigned int d_size; int /*<<< orphan*/  d_attrib; int /*<<< orphan*/  d_modtime; int /*<<< orphan*/  d_creatime; } ;
struct fs_dir {char* pathbuf; size_t pathlen; int /*<<< orphan*/  dhandle; } ;
struct dirent {int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_DIRENT ; 
 int /*<<< orphan*/  ATTR_NORMAL ; 
 int /*<<< orphan*/  ATTR_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int S_IFDIR ; 
 int S_IWUSR ; 
 struct dirent* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,size_t) ; 

struct fs_dirent *FUNC5(void *dhandle, struct fs_dirent *result)
{
   struct fs_dir *fsdir = (struct fs_dir *)dhandle;

   FUNC0( "vc_hostfs_readdir_r(%p)", fsdir );

   if (fsdir && result)
   {
      struct dirent *dent;

      while ((dent = FUNC1(fsdir->dhandle)) != NULL)
      {
         struct stat statbuf;
         int ret;

         /* Append the filename, and stat the resulting path */
         fsdir->pathbuf[fsdir->pathlen] = '/';
         FUNC4(fsdir->pathbuf, dent->d_name, sizeof(fsdir->pathbuf), fsdir->pathlen + 1);
         ret = FUNC3(fsdir->pathbuf, &statbuf);
         fsdir->pathbuf[fsdir->pathlen] = '\0';

         if (ret == 0)
         {
            FUNC4(result->d_name, dent->d_name, sizeof(result->d_name), 0);
            result->d_size = (statbuf.st_size <= 0xffffffff) ? (unsigned int)statbuf.st_size : 0xffffffff;
            result->d_attrib = ATTR_NORMAL;
            if ((statbuf.st_mode & S_IWUSR) == 0)
               result->d_attrib |= ATTR_RDONLY;
            if (statbuf.st_mode & S_IFDIR)
               result->d_attrib |= ATTR_DIRENT;
            result->d_creatime = statbuf.st_ctime;
            result->d_modtime = statbuf.st_mtime;
            FUNC0( "vc_hostfs_readdir_r() = '%s', %x, %x", result->d_name, result->d_size, result->d_attrib );
            break;
         }
      }

      if (!dent)
      {
         FUNC0( "vc_hostfs_readdir_r() = NULL" );
         FUNC2(fsdir->dhandle);
         result = NULL;
      }
   }
   else
   {
      result = NULL;
   }

   return result;
}