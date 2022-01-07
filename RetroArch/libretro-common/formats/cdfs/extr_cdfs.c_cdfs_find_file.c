
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int size; TYPE_2__* track; } ;
typedef TYPE_1__ cdfs_file_t ;
typedef int buffer ;
struct TYPE_5__ {int stream; } ;


 int cdfs_seek_track_sector (TYPE_2__*,int) ;
 int intfstream_read (int ,int*,int) ;
 int memcpy (int*,char const*,int const) ;
 int strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char const*,int) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static int cdfs_find_file(cdfs_file_t* file, const char* path)
{
   uint8_t buffer[2048], *tmp;
   int sector, path_length;

   const char* slash = strrchr(path, '\\');
   if (slash)
   {

      const int dir_length = (int)(slash - path);
      memcpy(buffer, path, dir_length);
      buffer[dir_length] = '\0';

      sector = cdfs_find_file(file, (const char*)buffer);
      if (sector < 0)
         return sector;

      path += dir_length + 1;
   }
   else
   {
      int offset;


      cdfs_seek_track_sector(file->track, 16);
      intfstream_read(file->track->stream, buffer, sizeof(buffer));



      offset = 156 + 2;
      sector = buffer[offset] | (buffer[offset + 1] << 8) | (buffer[offset + 2] << 16);
   }


   cdfs_seek_track_sector(file->track, sector);
   intfstream_read(file->track->stream, buffer, sizeof(buffer));

   path_length = strlen(path);
   tmp = buffer;
   while (tmp < buffer + sizeof(buffer))
   {

      if (!*tmp)
         break;


      if ((tmp[33 + path_length] == ';' || tmp[33 + path_length] == '\0') &&
         strncasecmp((const char*)(tmp + 33), path, path_length) == 0)
      {

         if (!slash)
            file->size = tmp[10] | (tmp[11] << 8) | (tmp[12] << 16) | (tmp[13] << 24);


         sector = tmp[2] | (tmp[3] << 8) | (tmp[4] << 16);
         return sector;
      }


      tmp += tmp[0];
   }

   return -1;
}
