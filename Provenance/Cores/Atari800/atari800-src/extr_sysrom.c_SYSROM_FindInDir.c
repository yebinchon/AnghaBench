
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dirent {char* d_name; } ;
typedef scalar_t__ ULONG ;
struct TYPE_2__ {int size; scalar_t__ crc32; int filename; scalar_t__ unset; } ;
typedef int FILE ;
typedef int DIR ;


 int CRC32_FromFile (int *,scalar_t__*) ;
 scalar_t__ CRC_NULL ;
 int ClearUnsetFlag (int) ;
 int FALSE ;
 int FILENAME_MAX ;
 int IsLengthAllowed (int) ;
 int MatchByName (char*,int,int) ;
 int SYSROM_SIZE ;
 TYPE_1__* SYSROM_roms ;
 int TRUE ;
 int Util_catpath (char*,char const*,char*) ;
 int Util_flen (int *) ;
 int Util_rewind (int *) ;
 int closedir (int *) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ num_unset_roms ;
 int * opendir (char const*) ;
 struct dirent* readdir (int *) ;
 int strcpy (int ,char*) ;
 scalar_t__ tolower (char) ;

int SYSROM_FindInDir(char const *directory, int only_if_not_set)
{
 DIR *dir;
 struct dirent *entry;

 if (only_if_not_set && num_unset_roms == 0)

  return TRUE;

 if ((dir = opendir(directory)) == ((void*)0))
  return FALSE;

 while ((entry = readdir(dir)) != ((void*)0)) {
  char full_filename[FILENAME_MAX];
  FILE *file;
  int len;
  int id;
  ULONG crc;
  int matched_crc = FALSE;
  Util_catpath(full_filename, directory, entry->d_name);
  if ((file = fopen(full_filename, "rb")) == ((void*)0))

   continue;

  len = Util_flen(file);

  if (!IsLengthAllowed(len)){
   fclose(file);
   continue;
  }
  Util_rewind(file);

  if (!CRC32_FromFile(file, &crc)) {
   fclose(file);
   continue;
  }
  fclose(file);


  for (id = 0; id < SYSROM_SIZE; ++id) {
   if ((!only_if_not_set || SYSROM_roms[id].unset)
       && SYSROM_roms[id].size == len
       && SYSROM_roms[id].crc32 != CRC_NULL && SYSROM_roms[id].crc32 == crc) {
    strcpy(SYSROM_roms[id].filename, full_filename);
    ClearUnsetFlag(id);
    matched_crc = TRUE;
    break;
   }
  }

  if (!matched_crc) {

   char *c = entry->d_name;
   while (*c != 0) {
    *c = (char)tolower(*c);
    ++c;
   }

   id = MatchByName(entry->d_name, len, only_if_not_set);
   if (id >= 0){
    strcpy(SYSROM_roms[id].filename, full_filename);
    ClearUnsetFlag(id);
   }
  }
 }

 closedir(dir);
 return TRUE;
}
