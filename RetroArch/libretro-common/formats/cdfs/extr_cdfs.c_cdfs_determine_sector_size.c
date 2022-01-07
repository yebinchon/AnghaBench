
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
struct TYPE_3__ {int pregap_sectors; int stream_sector_size; int stream_sector_header_size; int stream; } ;
typedef TYPE_1__ cdfs_track_t ;
typedef int buffer ;


 int SEEK_SET ;
 int intfstream_get_size (int ) ;
 int intfstream_read (int ,int*,int) ;
 int intfstream_seek (int ,int const,int ) ;

__attribute__((used)) static void cdfs_determine_sector_size(cdfs_track_t* track)
{
   uint8_t buffer[32];
   int64_t stream_size;
   const int toc_sector = track->pregap_sectors + 16;
   intfstream_seek(track->stream, toc_sector * 2352, SEEK_SET);
   if (intfstream_read(track->stream, buffer, sizeof(buffer)) < sizeof(buffer))
      return;


   if (buffer[25] == 0x43 && buffer[26] == 0x44 &&
      buffer[27] == 0x30 && buffer[28] == 0x30 && buffer[29] == 0x31)
   {
      track->stream_sector_size = 2352;
      track->stream_sector_header_size = 24;
   }

   else if (buffer[17] == 0x43 && buffer[18] == 0x44 &&
      buffer[19] == 0x30 && buffer[20] == 0x30 && buffer[21] == 0x31)
   {
      track->stream_sector_size = 2352;
      track->stream_sector_header_size = 16;
   }
   else
   {

      if (buffer[0] == 0 && buffer[1] == 0xFF && buffer[2] == 0xFF && buffer[3] == 0xFF &&
         buffer[4] == 0xFF && buffer[5] == 0xFF && buffer[6] == 0xFF && buffer[7] == 0xFF &&
         buffer[8] == 0xFF && buffer[9] == 0xFF && buffer[10] == 0xFF && buffer[11] == 0)
      {



         track->stream_sector_size = 2352;
         track->stream_sector_header_size = 16;
      }
      else
      {

         stream_size = intfstream_get_size(track->stream);

         if ((stream_size % 2352) == 0)
         {

            track->stream_sector_size = 2352;
         }
         else if ((stream_size % 2048) == 0)
         {

            track->stream_sector_size = 2048;
         }
         else if ((stream_size % 2336) == 0)
         {

            track->stream_sector_size = 2336;
            track->stream_sector_header_size = 8;
         }
      }
   }
}
