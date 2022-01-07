
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int pregap_sectors; unsigned int stream_sector_size; scalar_t__ stream_sector_header_size; int stream; } ;
typedef TYPE_1__ cdfs_track_t ;


 int SEEK_SET ;
 int intfstream_seek (int ,scalar_t__,int ) ;

__attribute__((used)) static void cdfs_seek_track_sector(cdfs_track_t* track, unsigned int sector)
{
   intfstream_seek(track->stream, (sector + track->pregap_sectors) * track->stream_sector_size + track->stream_sector_header_size, SEEK_SET);
}
