#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_4__ {int size; TYPE_2__* track; } ;
typedef  TYPE_1__ cdfs_file_t ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_5__ {int /*<<< orphan*/  stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,char const*,int const) ; 
 int FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char const*,int) ; 
 char* FUNC5 (char const*,char) ; 

__attribute__((used)) static int FUNC6(cdfs_file_t* file, const char* path)
{
   uint8_t buffer[2048], *tmp;
   int sector, path_length;

   const char* slash = FUNC5(path, '\\');
   if (slash)
   {
      /* navigate the path to the directory record for the file */
      const int dir_length = (int)(slash - path);
      FUNC2(buffer, path, dir_length);
      buffer[dir_length] = '\0';

      sector = FUNC6(file, (const char*)buffer);
      if (sector < 0)
         return sector;

      path += dir_length + 1;
   }
   else
   {
      int offset;

      /* find the cd information (always 16 frames in) */
      FUNC0(file->track, 16);
      FUNC1(file->track->stream, buffer, sizeof(buffer));

      /* the directory_record starts at 156 bytes into the sector.
       * the sector containing the root directory contents is a 3 byte value that is 2 bytes into the directory_record. */
      offset = 156 + 2;
      sector = buffer[offset] | (buffer[offset + 1] << 8) | (buffer[offset + 2] << 16);
   }

   /* process the contents of the directory */
   FUNC0(file->track, sector);
   FUNC1(file->track->stream, buffer, sizeof(buffer));

   path_length = FUNC3(path);
   tmp = buffer;
   while (tmp < buffer + sizeof(buffer))
   {
      /* the first byte of the record is the length of the record - if 0, we reached the end of the data */
      if (!*tmp)
         break;

      /* filename is 33 bytes into the record and the format is "FILENAME;version" or "DIRECTORY" */
      if ((tmp[33 + path_length] == ';' || tmp[33 + path_length] == '\0') &&
         FUNC4((const char*)(tmp + 33), path, path_length) == 0)
      {
         /* the file size is in bytes 10-13 of the record */
         if (!slash)
            file->size = tmp[10] | (tmp[11] << 8) | (tmp[12] << 16) | (tmp[13] << 24);

         /* the file contents are in the sector identified in bytes 2-4 of the record */
         sector = tmp[2] | (tmp[3] << 8) | (tmp[4] << 16);
         return sector;
      }

      /* the first byte of the record is the length of the record */
      tmp += tmp[0];
   }

   return -1;
}