
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stream; } ;
typedef TYPE_1__ cdfs_track_t ;


 int free (TYPE_1__*) ;
 int intfstream_close (int ) ;

void cdfs_close_track(cdfs_track_t* track)
{
   if (track)
   {
      intfstream_close(track->stream);
      free(track);
   }
}
