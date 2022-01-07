
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int intfstream_t ;
struct TYPE_4__ {unsigned int pregap_sectors; int * stream; } ;
typedef TYPE_1__ cdfs_track_t ;


 scalar_t__ calloc (int,int) ;
 int cdfs_determine_sector_size (TYPE_1__*) ;

__attribute__((used)) static cdfs_track_t* cdfs_wrap_stream(intfstream_t* stream, unsigned pregap_sectors)
{
   cdfs_track_t* track;

   if (stream == ((void*)0))
      return ((void*)0);

   track = (cdfs_track_t*)calloc(1, sizeof(*track));
   track->stream = stream;
   track->pregap_sectors = pregap_sectors;
   cdfs_determine_sector_size(track);
   return track;
}
