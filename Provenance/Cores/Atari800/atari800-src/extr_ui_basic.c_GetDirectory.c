
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int DWORD ;


 scalar_t__ BasicUIOpenDir (char const*) ;
 scalar_t__ BasicUIReadDir (char*,int*) ;
 int FILENAMES_INITIAL_SIZE ;
 int FILENAME_MAX ;
 int FilenamesAdd (char*) ;
 int FilenamesSort (char const**,char const**) ;
 int GetLogicalDrives () ;
 int Log_print (char*,char const*) ;
 int S_IXUSR ;
 scalar_t__ Util_malloc (size_t) ;
 char* Util_strdup (char*) ;
 unsigned short _STAT_DIRSIZE ;
 unsigned short _STAT_EXEC_EXT ;
 unsigned short _STAT_EXEC_MAGIC ;
 unsigned short _STAT_INODE ;
 unsigned short _STAT_ROOT_TIME ;
 unsigned short _STAT_WRITEBIT ;
 unsigned short _djstat_flags ;
 char const** filenames ;
 int memcpy (char*,char*,size_t) ;
 int n_filenames ;
 scalar_t__ stat (char*,struct stat*) ;
 size_t strlen (char*) ;

__attribute__((used)) static void GetDirectory(const char *directory)
{







 filenames = (const char **) Util_malloc(FILENAMES_INITIAL_SIZE * sizeof(const char *));
 n_filenames = 0;

 if (BasicUIOpenDir(directory)) {
  char filename[FILENAME_MAX];
  int isdir;

  while (BasicUIReadDir(filename, &isdir)) {
   char *filename2;

   if (filename[0] == '\0' ||
    (filename[0] == '.' && filename[1] == '\0'))
    continue;

   if (isdir) {

    size_t len = strlen(filename);
    filename2 = (char *) Util_malloc(len + 3);
    memcpy(filename2 + 1, filename, len);
    filename2[0] = '[';
    filename2[len + 1] = ']';
    filename2[len + 2] = '\0';
   }
   else
    filename2 = Util_strdup(filename);

   FilenamesAdd(filename2);
  }

  FilenamesSort(filenames, filenames + n_filenames);
 }
 else {
  Log_print("Error opening '%s' directory", directory);
 }
}
