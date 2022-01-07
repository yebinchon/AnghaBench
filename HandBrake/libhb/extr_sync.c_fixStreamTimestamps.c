
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ type; } ;
typedef TYPE_1__ sync_stream_t ;


 scalar_t__ SYNC_TYPE_AUDIO ;
 scalar_t__ SYNC_TYPE_SUBTITLE ;
 scalar_t__ SYNC_TYPE_VIDEO ;
 int dejitterAudio (TYPE_1__*) ;
 int dejitterVideo (TYPE_1__*) ;
 int fixAudioGap (TYPE_1__*) ;
 int fixAudioOverlap (TYPE_1__*) ;
 int fixSubtitleOverlap (TYPE_1__*) ;
 int fixVideoOverlap (TYPE_1__*) ;

__attribute__((used)) static void fixStreamTimestamps( sync_stream_t * stream )
{

    if (stream->type == SYNC_TYPE_AUDIO)
    {
        dejitterAudio(stream);
        fixAudioOverlap(stream);
        fixAudioGap(stream);
    }
    else if (stream->type == SYNC_TYPE_VIDEO)
    {
        dejitterVideo(stream);
        fixVideoOverlap(stream);
    }
    else if (stream->type == SYNC_TYPE_SUBTITLE)
    {
        fixSubtitleOverlap(stream);
    }
}
