
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_13__ {char* filename; int* entryData; } ;
struct TYPE_12__ {scalar_t__ rootDirCluster; scalar_t__ cwdCluster; scalar_t__ filesysType; } ;
typedef TYPE_1__ PARTITION ;
typedef TYPE_2__ DIR_ENTRY ;


 int ATTRIB_DIR ;
 scalar_t__ CLUSTER_ROOT ;
 size_t DIR_ENTRY_attributes ;
 char const DIR_SEPARATOR ;
 scalar_t__ FS_FAT32 ;
 int MAX_ALIAS_LENGTH ;
 size_t NAME_MAX ;
 int _FAT_directory_entryGetAlias (int*,char*) ;
 scalar_t__ _FAT_directory_entryGetCluster (TYPE_1__*,int*) ;
 int _FAT_directory_getFirstEntry (TYPE_1__*,TYPE_2__*,scalar_t__) ;
 int _FAT_directory_getNextEntry (TYPE_1__*,TYPE_2__*) ;
 int _FAT_directory_getRootEntry (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ _FAT_directory_mbsncasecmp (char const*,char*,size_t) ;
 char* strchr (char const*,char const) ;
 size_t strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char*,size_t) ;
 scalar_t__ strncmp (char*,char const*,size_t) ;
 size_t strnlen (char*,int) ;

bool _FAT_directory_entryFromPath (PARTITION* partition, DIR_ENTRY* entry, const char* path, const char* pathEnd)
{
   size_t dirnameLength;
   const char* nextPathPosition;
   uint32_t dirCluster;
   bool foundFile;
   char alias[MAX_ALIAS_LENGTH];
   const char *pathPosition = path;
   bool found = 0;
   bool notFound = 0;


   if (pathEnd == ((void*)0))
      pathEnd = strchr (path, '\0');

   if (pathPosition[0] == DIR_SEPARATOR)
   {

      dirCluster = partition->rootDirCluster;

      while (pathPosition[0] == DIR_SEPARATOR)
         pathPosition++;

      if (pathPosition >= pathEnd)
      {
         _FAT_directory_getRootEntry (partition, entry);
         found = 1;
      }
   }

   else
      dirCluster = partition->cwdCluster;

   while (!found && !notFound)
   {

      nextPathPosition = strchr (pathPosition, DIR_SEPARATOR);
      if (nextPathPosition != ((void*)0))
         dirnameLength = nextPathPosition - pathPosition;
      else
         dirnameLength = strlen(pathPosition);


      if (dirnameLength > NAME_MAX)
         return 0;



      if ((dirCluster == partition->rootDirCluster)
            && ((strncmp(".", pathPosition, dirnameLength) == 0)
               || (strncmp("..", pathPosition, dirnameLength) == 0)))
      {
         foundFile = 1;
         _FAT_directory_getRootEntry(partition, entry);
      }
      else
      {

         foundFile = _FAT_directory_getFirstEntry (partition, entry, dirCluster);

         while (foundFile && !found && !notFound)
         {


            if ((dirnameLength == strnlen(entry->filename, NAME_MAX))
                  && (_FAT_directory_mbsncasecmp(pathPosition, entry->filename, dirnameLength) == 0))
               found = 1;


            _FAT_directory_entryGetAlias (entry->entryData, alias);
            if ((dirnameLength == strnlen(alias, MAX_ALIAS_LENGTH))
                  && (strncasecmp(pathPosition, alias, dirnameLength) == 0))
               found = 1;


            if (found && !(entry->entryData[DIR_ENTRY_attributes] & ATTRIB_DIR) && (nextPathPosition != ((void*)0)))
               found = 0;

            if (!found)
               foundFile = _FAT_directory_getNextEntry (partition, entry);
         }
      }

      if (!foundFile)
      {

         notFound = 1;
         found = 0;
      }

      else if ((nextPathPosition == ((void*)0)) || (nextPathPosition >= pathEnd))
         found = 1;
      else if (entry->entryData[DIR_ENTRY_attributes] & ATTRIB_DIR)
      {
         dirCluster = _FAT_directory_entryGetCluster (partition, entry->entryData);
         if (dirCluster == CLUSTER_ROOT)
            dirCluster = partition->rootDirCluster;
         pathPosition = nextPathPosition;

         while (pathPosition[0] == DIR_SEPARATOR)
            pathPosition++;

         if (pathPosition >= pathEnd)
            found = 1;
         else
            found = 0;
      }
   }

   if (found && !notFound)
   {


      if (partition->filesysType == FS_FAT32 && (entry->entryData[DIR_ENTRY_attributes] & ATTRIB_DIR) &&
            _FAT_directory_entryGetCluster (partition, entry->entryData) == CLUSTER_ROOT)
         _FAT_directory_getRootEntry (partition, entry);
      return 1;
   }

   return 0;
}
